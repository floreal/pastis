class SnippetsController < ApplicationController
  def index
    render :file => "/public/404.html", :status => 404, :layout => false
  end
  
  def show
    @snippet = Snippet.find(params[:id])
    @title = "Snippet \##{@snippet.id}"
  rescue
    render :file => '/public/404.html', :status => 404, :layout => false
  end

  def create
    render :status => 400 unless request.post?
    @snippet = Snippet.new params[:snippet]
    unless @snippet.valid?
      flash[:snippet] = @snippet
      redirect_to '/home'
    else
      @snippet.save
      redirect_to @snippet
    end
  end
end
