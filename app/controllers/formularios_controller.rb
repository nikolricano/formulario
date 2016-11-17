class FormulariosController < ApplicationController

  def formularios
    @uno = User.new
  end

  def formularios_post
    @user = User.create(name: params[:user][:name], age: params[:user][:age], address: params[:user][:address])
    redirect_to formularios_formularios_path
  end

end
