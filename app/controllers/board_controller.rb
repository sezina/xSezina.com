class BoardController < ApplicationController
  skip_before_filter :authorize
  def index
    @posts = Post.all
    @friends = Friend.all
  end

end
