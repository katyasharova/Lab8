Rails.application.routes.draw do
  root to: 'index#input'
  get 'index/input'
  get 'index/output'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
