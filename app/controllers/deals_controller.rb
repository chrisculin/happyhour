class DealsController < ApplicationController
  def index
    @q = Deal.ransack(params[:q])
    @deals = @q.result(:distinct => true).includes(:bar, :likes, :comments).page(params[:page]).per(10)

    render("deal_templates/index.html.erb")
  end

  def show
    @comment = Comment.new
    @favorite = Favorite.new
    @deal = Deal.find(params.fetch("id_to_display"))

    render("deal_templates/show.html.erb")
  end

  def new_form
    @deal = Deal.new

    render("deal_templates/new_form.html.erb")
  end

  def create_row
    @deal = Deal.new

    @deal.bar_id = params.fetch("bar_id")
    @deal.day_of_week = params.fetch("day_of_week")
    @deal.deal_level = params.fetch("deal_level")
    @deal.description = params.fetch("description")
    @deal.start_time = params.fetch("start_time")
    @deal.end_time = params.fetch("end_time")
    @deal.deal_tagline = params.fetch("deal_tagline")
    @deal.rating = params.fetch("rating")
    @deal.verification_status = params.fetch("verification_status")

    if @deal.valid?
      @deal.save

      redirect_back(:fallback_location => "/deals", :notice => "Deal created successfully.")
    else
      render("deal_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_bar
    @deal = Deal.new

    @deal.bar_id = params.fetch("bar_id")
    @deal.day_of_week = params.fetch("day_of_week")
    @deal.deal_level = params.fetch("deal_level")
    @deal.description = params.fetch("description")
    @deal.start_time = params.fetch("start_time")
    @deal.end_time = params.fetch("end_time")
    @deal.deal_tagline = params.fetch("deal_tagline")
    @deal.rating = params.fetch("rating")
    @deal.verification_status = params.fetch("verification_status")

    if @deal.valid?
      @deal.save

      redirect_to("/bars/#{@deal.bar_id}", notice: "Deal created successfully.")
    else
      render("deal_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @deal = Deal.find(params.fetch("prefill_with_id"))

    render("deal_templates/edit_form.html.erb")
  end

  def update_row
    @deal = Deal.find(params.fetch("id_to_modify"))

    @deal.bar_id = params.fetch("bar_id")
    @deal.day_of_week = params.fetch("day_of_week")
    @deal.deal_level = params.fetch("deal_level")
    @deal.description = params.fetch("description")
    @deal.start_time = params.fetch("start_time")
    @deal.end_time = params.fetch("end_time")
    @deal.deal_tagline = params.fetch("deal_tagline")
    @deal.rating = params.fetch("rating")
    @deal.verification_status = params.fetch("verification_status")

    if @deal.valid?
      @deal.save

      redirect_to("/deals/#{@deal.id}", :notice => "Deal updated successfully.")
    else
      render("deal_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_bar
    @deal = Deal.find(params.fetch("id_to_remove"))

    @deal.destroy

    redirect_to("/bars/#{@deal.bar_id}", notice: "Deal deleted successfully.")
  end

  def destroy_row
    @deal = Deal.find(params.fetch("id_to_remove"))

    @deal.destroy

    redirect_to("/deals", :notice => "Deal deleted successfully.")
  end
end
