Rails.application.routes.draw do
  get 'wellcome/index'

  devise_for :users

  root to: 'wellcome#index'

  namespace :admin do

  end

  namespace :api do

  end

end
