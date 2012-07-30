class BoardController < ApplicationController
  skip_before_filter :authorize
  def index
    @posts = Post.all
  end

end
