class DashboardController < ApplicationController

  def index
    path = case current_user.usertype_id
      when '1'
        patients_path
      when '2'
        providers_path
      when '3'
        providers_path
      when '4'
        new_provider_path
      else
        # If you want to raise an exception or have a default root for users without roles
      	new_user_registration_path  
    end

    redirect_to root_path     
  end

end
