Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # shallow do
  # 	resources :articles do
  # 	resources :posts

  # end


  shallow do
		resources :articles do
			resources :posts
		end
  end


  devise_for :users, :controllers => { registrations: 'registrations'}
  root 'welcome#index'
end
