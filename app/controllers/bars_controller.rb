class BarsController < ApplicationController
  def index
    @bars = Bar.page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@bars.where.not(:address_latitude => nil)) do |bar, marker|
      marker.lat bar.address_latitude
      marker.lng bar.address_longitude
      marker.infowindow "<h5><a href='/bars/#{bar.id}'>#{bar.name}</a></h5><small>#{bar.address_formatted_address}</small>"
    end

    render("bar_templates/index.html.erb")
  end

  def show
    @deal = Deal.new
    @bar = Bar.find(params.fetch("id_to_display"))

    render("bar_templates/show.html.erb")
  end

  def new_form
    @bar = Bar.new

    render("bar_templates/new_form.html.erb")
  end

  def create_row
    @bar = Bar.new

    @bar.address = params.fetch("address")
    @bar.name = params.fetch("name")
    @bar.yelp_link = params.fetch("yelp_link")
    @bar.phone_number = params.fetch("phone_number")

    if @bar.valid?
      @bar.save

      redirect_back(:fallback_location => "/bars", :notice => "Bar created successfully.")
    else
      render("bar_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bar = Bar.find(params.fetch("prefill_with_id"))

    render("bar_templates/edit_form.html.erb")
  end

  def update_row
    @bar = Bar.find(params.fetch("id_to_modify"))

    @bar.address = params.fetch("address")
    @bar.name = params.fetch("name")
    @bar.yelp_link = params.fetch("yelp_link")
    @bar.phone_number = params.fetch("phone_number")

    if @bar.valid?
      @bar.save

      redirect_to("/bars/#{@bar.id}", :notice => "Bar updated successfully.")
    else
      render("bar_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bar = Bar.find(params.fetch("id_to_remove"))

    @bar.destroy

    redirect_to("/bars", :notice => "Bar deleted successfully.")
  end
end
