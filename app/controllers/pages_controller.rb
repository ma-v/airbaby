class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @babies = Baby.global_search(params[:query])
      @markers = @babies.map do |baby|
        {
          lat: baby.user.latitude,
          lng: baby.user.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { baby: baby }),
          image_url: helpers.asset_url('baby-carriage-solid.svg')
        }
      end
    else
      @babies = policy_scope(Baby)
      @markers = @babies.map do |baby|
        {
          lat: baby.user.latitude,
          lng: baby.user.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { baby: baby }),
          image_url: helpers.asset_url('baby-carriage-solid.svg')
        }
      end
    end
  end

  def global_search
  end

  def dashboard
  end
end
