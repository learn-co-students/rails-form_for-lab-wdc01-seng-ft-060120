Rails.application.routes.draw do
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'

  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]

  # get 'school_classes/index'
  # get 'school_classes/show'
  # get 'school_classes/new'
  # get 'school_classes/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
