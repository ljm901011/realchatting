Rails.application.routes.draw do

  devise_for :admins, controllers: {
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  get 'home/index'
  get 'home/intro'
  get 'home/send_msg/:id' => 'home#send_msg'  
  get 'home/channel_joiners/:id' => 'home#channel_joiners'  
  get 'home/chat/:id' => 'home#chat'  
  post 'home/timeline_maker/:id' => 'home#timeline_maker'  
  get 'home/timeline_reply_maker/:id' => 'home#timeline_reply_maker'
  get 'home/timeline_editor/:id' => 'home#timeline_editor'
  post 'home/timeline_editing/:id' => 'home#timeline_editing'
  get 'home/timeline_destroying/:id' => 'home#timeline_destroying'
  get 'home/timeline_reply_destroying/:id' => 'home#timeline_reply_destroying'
  get 'home/chat_maker'
  post 'home/chat_making'
  get 'home/chat_destroying/:id' => 'home#chat_destroying'
  get 'home/block_user/:id' => 'home#block_user'
  get 'home/block_guest/:id' => 'home#block_guest'
  post 'home/blocking_user/:id' => 'home#blocking_user'
  post 'home/blocking_guest/:id' => 'home#blocking_guest'
  get 'home/unblock_user/:id' => 'home#unblock_user'
  get 'home/unblock_guest/:id' => 'home#unblock_guest'
  post 'home/unblocking_user/:id' => 'home#unblocking_user'
  post 'home/unblocking_guest/:id' => 'home#unblocking_guest'
  post 'home/chat_editing/:id' => 'home#chat_editing'
  get 'admin/channels'
  get 'admin/channel_update'
  get 'admin/channel/:id' => 'admin#channel'
  get 'admin/channel_edit/:id' => 'admin#channel_edit'
  get 'admin/channel_destroy/:id' => 'admin#channel_destroy'
  post 'admin/channel_editing/:id' => 'admin#channel_editing'
  get 'admin/users'
  get 'admin/user_destroy/:id' => 'admin#user_destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
