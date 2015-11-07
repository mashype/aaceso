class DefineuserController < ApplicationController

  def index
    path = case current_user.usertype_id
      when 1
        '/welcome/providerhome'
      when 2
        '/welcome/patienthome'
      when 3
        '/welcome/providerhome'
      when 4
        '/welcome/adminhome'
      else
        '/users/edit'
    end

    redirect_to path     
  end
end