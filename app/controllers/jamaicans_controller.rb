class JamaicansController < ApplicationController
  def index
    @jamaicans = Jamaican.all
  end

  def show
    @jamaican = Jamaican.find_by(id: params[:id])
  end

  def create
    @jamaican = Jamaican.create(first_name: params[:first_name], last_name: params[:last_name], position: params[:position])
    render :show
  end

  def update
    @jamaican = Jamaican.find(params[:id])
    @jamaican.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], position: params[:position])
    @jamaican.save
    render :show
  end

  def destroy
    @jamaican = Jamaican.find(params[:id])
    @jamaican.destroy
    render json: { message: "Jamaican #{@jamaican.first_name} died in practice"}
  end
end
