Rails.application.routes.draw do

  namespace :admin do
    resources :books, only: [:index, :create, :edit, :update, :destroy] do
      resources :book_pages, only: [:index, :new, :create, :edit, :update, :destroy]
    end

    resources :languages, only: [:index, :create, :edit, :update, :destroy] do
      resources :os_projects, only: [:index, :create, :edit, :update, :destroy] do
        resources :os_pages, only: [:index, :new, :create, :edit, :update, :destroy]
      end
    end
  end

  resources :languages, only: [:index]
end
