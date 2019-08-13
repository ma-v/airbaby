class BabiesController < ApplicationController
  before_action :set_baby, only: [:show]

  def show
  end

  private

  def set_baby
    @baby = Baby.find(params[:id])
    authorize @baby
  end
end
