class EstablishmentsController < ApplicationController

  def index
    @establishments = Establishment.all
  end

  def show
    @establishment = Establishment.find(params[:id])
  end

  def new
    @establishment = Establishment.new
  end

  def create
    @establishment = Establishment.new(establishment_params)
    @establishment.phone_number = Establishment.reset_phone_number(@establishment)
    @establishment.save
    redirect_to establishments_path
  end

  private

  def establishment_params
    params.require(:establishment).permit(:name, :category, :address, :phone_number)
  end
end
