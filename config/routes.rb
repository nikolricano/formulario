Rails.application.routes.draw do

  resources :posts do
    resources :comments, only: [:index]
  end

  root 'formularios#formularios'
  post 'formularios/formularios'
  get  'formularios/formularios'
  post 'formularios/formularios_rails'
  get  'formularios/formularios_rails'

end
