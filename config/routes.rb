Rails.application.routes.draw do
  root 'home#top'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
