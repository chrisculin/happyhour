Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Bar resource:

  # CREATE
  get("/bars/new", { :controller => "bars", :action => "new_form" })
  post("/create_bar", { :controller => "bars", :action => "create_row" })

  # READ
  get("/bars", { :controller => "bars", :action => "index" })
  get("/bars/:id_to_display", { :controller => "bars", :action => "show" })

  # UPDATE
  get("/bars/:prefill_with_id/edit", { :controller => "bars", :action => "edit_form" })
  post("/update_bar/:id_to_modify", { :controller => "bars", :action => "update_row" })

  # DELETE
  get("/delete_bar/:id_to_remove", { :controller => "bars", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
