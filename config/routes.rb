Rails.application.routes.draw do
  resources :sessions, only:[:new, :create, :destroy]

  get "/" , to: "home#top"

  resources :users
  resources :pictures
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
