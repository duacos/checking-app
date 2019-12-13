Rails.application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :articles
    end

    namespace :v2 do
      resources :empresas
      resources :politicas
      resources :activos
      resources :accesos
      resources :ambientes
      resources :operativas
      resources :teles
      resources :desarrollos
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
