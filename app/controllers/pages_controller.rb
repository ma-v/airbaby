class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @babies = policy_scope(Baby)
    @markers = @babies.map do |baby|
      {
        lat: baby.user.latitude,
        lng: baby.user.longitude
      }
    end
  end

  def dashboard
  end
end
