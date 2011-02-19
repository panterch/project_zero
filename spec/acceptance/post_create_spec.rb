require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Posts Page", %q{
  In order to have many posts
  I want to start creating a post first
} do

  scenario "should create new post" do
    visit '/posts/new'

    fill_in 'post_title', :with => 'John'
    fill_in 'post_body', :with => 'Doe'
    click_button 'Create Post'

    current_path.should match %r{/posts/\d+}
    page.should have_content("John")
    page.should have_content("Doe")
  end

  scenario "should show post index" do
    Post.create!(:title => "John", :body => "Doe")

    visit posts_url
    page.should have_content("John")
    page.should have_content("Doe")
  end
end
