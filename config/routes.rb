Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:index, :show, :edit, :update]
  resources :top, :only => [:index]
  resources :description, :only => [:index]
  resources :family_groups, :only => [:new, :create,]
  get '/family_groups/:family_group_id' => 'family_groups#show'
  resources :questionnaires, :only => [:new, :create, :show] do
    resource :answer_counts, :only => [:new, :create]
  end
  resources :dinner_data, :only => [:index, :new, :create]


  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
