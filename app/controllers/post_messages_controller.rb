class PostMessagesController < ApplicationController
  before_action :set_post_message, only: [:edit, :update, :destroy]
  def index
    @post_messages = PostMessage.all
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
  def update
    if @post_message.update(post_message_params)
      redirect_to post_messages_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
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
def set_post_message
  @post_message = PostMessage.find(params[:id])
end
