class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @babies = policy_scope(Baby)
  end

  def dashboard
  end
end
