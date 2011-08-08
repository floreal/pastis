class PagesController < ApplicationController
  def home
    @title = 'Home'
    @snippet = (flash[:snippet] || Snippet.new)
  end

  def contact
    @title = 'Contact'
  end

  def about
    @title = 'About'
  end
end
