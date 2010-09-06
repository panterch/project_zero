class UsersController < ApplicationController
  resource_controller

  create.wants.html { redirect_to root_url }
end
