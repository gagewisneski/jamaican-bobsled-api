class PagesController < ApplicationController
  def home
  end
  
  def create
    @jamaican = Jamaican.new(first_name: params[:first_name], last_name: params[:last_name], position: params[:position])
    @jamaican.save
  end
end
