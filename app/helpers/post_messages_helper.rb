module PostMessagesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_post_messages_path
    elsif action_name == 'edit'
      post_message_path
    end
  end
end
