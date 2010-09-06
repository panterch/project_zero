class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  resource_controller

  create.wants.html { redirect_back_or_default root_url }

  destroy.wants.html { redirect_back_or_default new_user_session_url }

  def destroy  
    @user_session = UserSession.find  
    @user_session.destroy  
    flash[:notice] = "Successfully logged out."  
    redirect_to root_url  
  end

end
