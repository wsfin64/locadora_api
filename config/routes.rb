Rails.application.routes.draw do
  resources :veiculos do
    resources :contratos
  end

  resources :contratos do
    resources :clientes
  end

  resources :clientes do
    resources :contratos
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
