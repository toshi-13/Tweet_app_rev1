Rails.application.routes.draw do
   resources :posts
   get 'contens' => "home#contens"
   get 'user/user_add'=> "user#user_add"
   get 'top' => "home#top"
   root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
