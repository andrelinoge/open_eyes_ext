Rails.application.routes.draw do
  get 'wellcome/index'

  devise_for :users, :controllers => { :sessions => "admin/sessions" }

  root to: 'wellcome#index'

  namespace :admin do

  end

  namespace :api, defaults: { format: :json } do

  end

end
