class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @product = Product.all
  end
end
