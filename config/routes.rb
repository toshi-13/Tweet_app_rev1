Rails.application.routes.draw do
  get 'user/user_add'=> "user#user_add"
  get 'posts/index'=>"posts#index"
  get 'top' => "home#top"
  get 'contens' => "home#contens"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
