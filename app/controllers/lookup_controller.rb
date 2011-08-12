class LookupController < ApplicationController
  def find
    if request.post?
      lookup = Lookup.new params[:lookup]
      if lookup.valid?
      redirect_to :controller => :snippets,
                  :action => :show,
                  :id => lookup.snippet_id
      else
        flash[:lookup] = lookup
        redirect_to request.referer
      end
    end
  end
end
