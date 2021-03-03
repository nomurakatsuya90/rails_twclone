class PostMessagesController < ApplicationController
  def index
  end

  def new
    @post_message = PostMessage.new
  end
  def create
    @post_message = PostMessage.new(post_message_params)
    if params[:back]
      render :new
    else
      if @post_message.save
        redirect_to post_messages_path, notice: "ブログを作成しました！"  #一覧画面へ遷移
      else
        render :new  #同画面を再描画
      end
    end
  end

  def edit
  end

  def confirm
    @post_message = PostMessage.new(post_message_params)
    render :new if @post_message.invalid?
  end
  private
  def post_message_params
    params.require(:post_message).permit(:title, :content)
  end
end
