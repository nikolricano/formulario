class FormulariosController < ApplicationController

  def formularios
    @uno = User.new
  end

  def formularios_post
    missings = missing_fields
    if missings.count > 0
      redirect_to formularios_formularios_path, alert: msg(missings)
    else
      @user = User.create(name: params[:user][:name], age: params[:user][:age], address: params[:user][:address])
      redirect_to formularios_formularios_path, alert: 'Bien guardado'
    end
  end

  private

  def msg(missings)
    msg = 'No pude guardar me falta algo '
    missings.each do |missing|
      msg << "#{missing} "
    end
    msg
  end

  def missing_fields
    missings = []
    requireds.each do |required|
      if params[:user][required] == ''
        missings << required
      end
    end
    missings
  end

  def requireds
    [:campo1, :campo2, :campo3, :campo4, :campo5, :campo6, :campo7, :campo8, :campo9]
  end
end
