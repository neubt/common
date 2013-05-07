class Settings::ProfilesController < ApplicationController
  def show
    
  end

  def update
    current_user.update_attributes(params[:user])
  end
end
