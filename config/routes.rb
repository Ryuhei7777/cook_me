Rails.application.routes.draw do
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :comments, only: [:destroy]
  end

  namespace :admin do
    resources :recipes, only: [:show]
  end

  namespace :admin do
    root to: 'homes#top'
  end

  scope module: :public do
    resources :bookmarks, only: [:index, :create, :destroy]
  end

  scope module: :public do
    resources :comments, only: [:create]
  end

  scope module: :public do
    resources :tags, only: [:create, :destroy]
  end
  patch "/tags/update_all" => "public/tags#update_all", as: "tags_update_all"

  scope module: :public do
    resources :seasoning_items, only: [:create, :destroy]
  end
  patch "/seasoning_items/update_all" => "public/seasoning_items#update_all", as:"seasoning_items_update_all"

  scope module: :public do
    resources :seasonings, only: [:create, :destroy]
  end
  patch "/seasonings/update_all" => "public/seasonings#update_all", as:"seasonings_update_all"

  scope module: :public do
    resources :steps, only: [:create, :destroy]
  end
  patch "/steps/update_all" => "public/steps#update_all", as:"steps_update_all"

  scope module: :public do
    resources :materials, only: [:create, :destroy]
  end
  patch "/materials/update_all" => "public/materials#update_all", as:"materials_update_all"

  scope module: :public do
    resource :customers, only: [:show, :edit, :update]
  end
  get "/customers/withdraw_check" => "public/customers#withdraw_check", as: "withdraw_check"
  patch "/customers/withdraw" => "public/customers#withdraw", as: "withdraw"

  scope module: :public do
    resources :recipes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end

  root to: 'public/homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  devise_scope :customers do
    post 'customers/guest_sign_in', to: 'public/sessions#new_guest'
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
end
