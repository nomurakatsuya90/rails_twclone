Rails.application.routes.draw do
  get 'post_messages/index'
  get 'post_messages/new'
  get 'post_messages/edit'
  get 'post_messages/confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
