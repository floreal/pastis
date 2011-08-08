class LookupController < ApplicationController
  def find
    if request.post?
      lookup = Lookup.new params[:lookup]
      redirect_to :controller => :snippets,
                  :action => :show,
                  :id => lookup.snippet_id
    else
      render :file => '/public/404.html', :status => 404, :layout => false
    end
  end
end
