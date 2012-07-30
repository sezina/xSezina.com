class BoardController < ApplicationController
  def index
    @posts = Post.all
  end

end
