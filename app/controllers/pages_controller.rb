class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @babies = policy_scope(Baby)
    @babies = policy_scope(Baby.global_search(params[:query])) if params[:query].present?
    @babies = policy_scope(Baby.where("age >= :min_age AND age <= :max_age", { min_age: params[:min_age], max_age: params[:max_age] })) if (params[:min_age].present? && params[:min_age].present?)
    @babies = policy_scope(Baby.where("price_per_day >= :min_price AND price_per_day <= :max_price", { min_price: params[:min_price], max_price: params[:max_price] })) if (params[:min_price].present? && params[:max_price].present?)
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
