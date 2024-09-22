class DeshboardsController < ApplicationController

  def index
    redirect_to new_account_session_path unless current_account
  end
  
end
