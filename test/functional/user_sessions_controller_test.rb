require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase


  context "GET on new" do
    setup { get :new }
    should respond_with(:success)
  end

  context "Minimal User" do
    setup { @user = Factory(:user) }

    context "POST on create with valid data" do
      setup do
        post :create,
             :user_session => { :email => @user.email, :password => 'welcome' }
      end
      should respond_with(:redirect)
      should "setup http session" do
        assert_equal @controller.session["user_credentials"],
                     @user.persistence_token
      end
    end

    context "POST on create with invalid email" do
      setup do
        post :create, :user_session =>
             { :email => 'invalid@example.com', :password => 'welcome' }
      end
      should respond_with(:success)
      should "leave no traces in http session" do
        assert_nil @controller.session["user_credentials"]
      end
    end

    # see http://rdoc.info/github/binarylogic/authlogic/master/Authlogic/TestCase#activate_authlogic-instance_method
    context "Authenticated via authlogic helpers" do
      setup { activate_authlogic && UserSession.create(@user) }
      should "setup http session" do
        assert_equal @controller.session["user_credentials"],
                     @user.persistence_token
      end

      context "DELETE on destroy" do
        setup { delete :destroy }
        should respond_with(:redirect)
        should "leave no traces in http session" do
          assert_nil @controller.session["user_credentials"]
        end
      end
    end
  end


end
