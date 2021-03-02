Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :post_messages do
      collection do
        post :confirm
      end
    end
  end
  # get 'post_messages/index'
  # get 'post_messages/new'
  # get 'post_messages/edit'
  # get 'post_messages/confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
