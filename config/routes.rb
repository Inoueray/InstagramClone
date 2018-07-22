Rails.application.routes.draw do
  resources :sessions, only:[:new, :create, :destroy]

  get "/" , to: "pictures#index"

  resources :users, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
