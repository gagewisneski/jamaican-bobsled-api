class JamaicansController < ApplicationController
  def index
    @jamaicans = Jamaican.all
  end

  def show
    @jamaican = Jamaican.find_by(id: params[:id])
  end
end
