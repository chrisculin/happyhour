Rails.application.routes.draw do
  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })

  #------------------------------

  # Routes for the Deal resource:

  # CREATE
  get("/deals/new", { :controller => "deals", :action => "new_form" })
  post("/create_deal", { :controller => "deals", :action => "create_row" })

  # READ
  get("/deals", { :controller => "deals", :action => "index" })
  get("/deals/:id_to_display", { :controller => "deals", :action => "show" })

  # UPDATE
  get("/deals/:prefill_with_id/edit", { :controller => "deals", :action => "edit_form" })
  post("/update_deal/:id_to_modify", { :controller => "deals", :action => "update_row" })

  # DELETE
  get("/delete_deal/:id_to_remove", { :controller => "deals", :action => "destroy_row" })

  #------------------------------

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
