class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.users << current_user
    @dog.save
    redirect_to dashboard_path
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :weight, :birthday)
  end
end
