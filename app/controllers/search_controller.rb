class SearchController < ApplicationController
  skip_before_filter :authorize
  def index
    if params[:search]
      @results = Post.search(params[:search])
    end
  end

end
