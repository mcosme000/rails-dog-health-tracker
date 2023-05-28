class PagesController < ApplicationController
  def home
  end

  def dashboard
    @dogs = Dog.all
  end
end
