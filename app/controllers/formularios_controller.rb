class FormulariosController < ApplicationController

  def formularios
  end

  def formularios_rails
    @user = User.new
    if params[:user].present?
      @user.name    = "esto es #{params[:user][:name]}"
      @user.age     = "tal ves #{params[:user][:age]}"
      @user.address = "ummm #{params[:user][:address]}"
    end
  end

end
