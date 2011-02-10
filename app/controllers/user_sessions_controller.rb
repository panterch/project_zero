class UserSessionsController < InheritedResources::Base
  
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def create
    create!{ root_url }
  end

  def destroy
    @user_session = UserSession.find  
    @user_session.destroy  
    flash[:notice] = "Successfully logged out."  
    redirect_to root_url  
  end

end
