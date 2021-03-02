class PostMessagesController < ApplicationController
  def index
  end

  def new
    @post_message = PostMessage.new
  end

  def edit
  end

  def confirm
  end
end
