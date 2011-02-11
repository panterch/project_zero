require 'spec_helper'

describe Post do

  it "initializes" do
    Post.new.should_not be_nil
  end

  it "has a valid factory" do
    post = Factory.build(:post)
    post.should be_valid
  end

end
