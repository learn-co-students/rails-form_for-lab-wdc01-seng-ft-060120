Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :students, only: [:index, :show, :new, :create, :edit, :update]
  #resources :schoolclasses, only: [:index, :show, :new, :create, :edit, :update]
  get "/students", to: "students#index", as: "students"
  get "/students/new", to: "students#new", as: "new_student"
  get "/students/:id", to: "students#show", as: "student"
  get "/students/:id/edit", to: "students#edit", as: "edit_student"
  post "students", to: "students#create"
  patch "/students/:id", to: "students#update"


  get "/school_classes", to: "school_classes#index", as: "school_classes"
  get "/school_classes/new", to: "school_classes#new", as: "new_school_class"
  get "/school_classes/:id", to: "school_classes#show", as: "school_class"
  get "/school_classes/:id/edit", to: "school_classes#edit", as: "edit_school_class"
  post "school_classes", to: "school_classes#create"
  patch "/school_classes/:id", to: "school_classes#update"
end
