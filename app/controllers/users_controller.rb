class UsersController < InheritedResources::Base 

  def create
    create!{ root_url }
  end

end
