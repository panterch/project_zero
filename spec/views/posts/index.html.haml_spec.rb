require 'spec_helper'
include InheritedResourceHelpers

describe "posts/index.html.haml" do

  it "should render" do
    @post = Factory.build(:post)
    mock_inherited_resource(@post)
    render :template => "posts/index"
    rendered.should =~ /new_resource_path/
  end

end
