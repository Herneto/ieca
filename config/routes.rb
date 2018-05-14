Rails.application.routes.draw do
  resources :dizimos  
  resources :membros
  root 'membros#index'
  match 'inicio' => 'membros#index', via: 'get'
  match 'estatisticas' => 'estatisticas#index', via: 'get'
  match 'configuracao' => 'configuracao#index', via: 'get'
  match 'configuracao/acesso' => 'configuracao#acesso', via: 'PATCH'
  match 'configuracao/adicionar' => 'configuracao#adicionar', via: 'post'
  match 'mais/:id' => 'membros#mais', via: 'get'
  

  devise_scope :usuario do
  	get 'login', to: 'usuarios/sessions#new'
    get 'sign_up', to: 'usuarios/registrations#new'
  	delete 'logout', to: 'usuarios/sessions#destroy'
  end

  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions',
    registrations: 'usuarios/registrations',
    passwords: 'usuarios/passwords'
  }

  #devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
