class FormulariosController < ApplicationController

  def formularios
    @uno = User.new
  end

  def formularios_post
    if params[:user][:name].blank? || params[:user][:age].blank? || params[:user][:address].blank?
      redirect_to formularios_formularios_path, alert: 'No pude guardar me falta algo'
    else
      @user = User.create(name: params[:user][:name], age: params[:user][:age], address: params[:user][:address])
      redirect_to formularios_formularios_path, alert: 'Bien guardado'
    end
  end

end
