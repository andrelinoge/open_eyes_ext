Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, :controllers => { :sessions => "admin/sessions" }

  root to: 'wellcome#index'

  namespace :admin do
    get '/', to: 'dashboard#index'
  end

  namespace :api, defaults: { format: :json } do
  end

end
