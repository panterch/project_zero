require 'spec_helper'

describe PostsController do

  context 'GET on new' do
    before(:each) { get :new }
    it 'assigns a new post record' do
      assigns(:post).should be_a_new(Post)
    end
    it 'responds with success' do
      response.code.should eq('200')
    end
  end

end
