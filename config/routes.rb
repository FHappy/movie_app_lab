Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'films' => "films#index"

  get 'films/new' => "films#new", as: "films_new"

  get 'films/:id' => "films#show", as: "films_show"

  get 'films/:id/edit' => "films#edit", as: "films_edit"

  post 'films' => "films#create", as: "films_create"

  patch 'films/:id' => "films#update", as: "films_update"

  delete 'films/:id' => "films#delete", as: "films_delete"

  root "films#index"
end
