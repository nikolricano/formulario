Rails.application.routes.draw do

  resources :posts do
    resources :comments, only: [:index]
  end

  get 'posts/new/:variable_x/:variable_y', controller: 'posts', action: 'new'

  root 'formularios#formularios'
  post 'formularios/formularios'
  get  'formularios/formularios'
  post 'formularios/formularios_rails'
  get  'formularios/formularios_rails'

end
