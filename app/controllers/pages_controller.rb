class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @babies = policy_scope(Baby)
    @babies = @babies.global_search(params[:query]) if params[:query].present?
    @babies = @babies.where("age >= :min_age AND age <= :max_age", min_age: params[:min_age], max_age: params[:max_age]) if params[:min_age].present? && params[:max_age].present?
    @babies = @babies.where("price_per_day >= :min_price AND price_per_day <= :max_price", min_price: params[:min_price], max_price: params[:max_price]) if params[:min_price].present? && params[:max_price].present?
    @babies = @babies.where(clean: true) if params[:clean].present?
    @babies = @babies.where(sleepy: true) if params[:sleepy].present?
    @babies = @babies.where(excited: true) if params[:excited].present?
    @babies = @babies.where(crying: true) if params[:crying].present?
    @babies = @babies.where(fat: true) if params[:fat].present?
    @babies = @babies.where(playful: true) if params[:playful].present?
    @babies = @babies.where(funny: true) if params[:funny].present?
    @babies = @babies.where(public: true) if params[:public].present?
    @babies = @babies.where(animals: true) if params[:animals].present?
    @babies = @babies.where(speaks: true) if params[:speaks].present?
    @babies = @babies.geocoded

    @markers = @babies.map do |baby|
      {
        lat: baby.user.latitude,
        lng: baby.user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { baby: baby }),
        image_url: helpers.asset_url('baby-carriage-solid.svg')
      }
    end
  end

  def global_search
  end

  def dashboard
  end
end
