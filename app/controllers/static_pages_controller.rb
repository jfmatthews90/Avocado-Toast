class StaticPagesController < ApplicationController

  def index
  end

  def landing_page
    @posts = Post.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'jmatth14@yahoo.com',
        subject: "Test Blog contact message from #{@name}",
        body: @message).deliver_now
  end

end
