class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def x
  end

  def save_user
    User.create(name: params[:name], email: params[:email], age: params[:age])
    redirect_to pages_x_path, notice: 'El usuario se ha creado exitosamente'
  end

end
