Rails.application.routes.draw do

  root 'formularios#formularios'
  get  'formularios/formularios'
  post 'formularios/formularios_post'

end
