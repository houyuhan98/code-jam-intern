class WingsController < ApplicationController
  def index
    @wings = Wing.all
  end

  def show
    @wing = Wing.find(params[:id])
  end

  private
  def wing_params
    params.require(:wing).permit(:name, :description)
  end
end
