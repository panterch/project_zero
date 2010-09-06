require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  context "GET on new" do
    setup { get :new }
    should respond_with(:success)
  end

  context "Post on create with valid data" do
    setup do
      post :create, :user => Factory.attributes_for(:user)
    end
    should respond_with(:redirect)
  end

end
