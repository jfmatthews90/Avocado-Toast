class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @posts = Post.limit(3)
  end
end
