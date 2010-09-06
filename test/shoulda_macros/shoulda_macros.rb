# some customer shoulda macros
#
# These macros are intended for use with shoulda, and will be included into
# your tests automatically. All of the macros use the standard shoulda
# assumption that the name of the test is based on the name of the model
# you're testing (that is, UserTest is the test for the User model), and
# will load that class for testing purposes.
#
# see https://szeryf.wordpress.com/2010/03/01/custom-shoulda-macros-a-tutorial/
# and http://github.com/thoughtbot/paperclip/blob/master/shoulda_macros/paperclip.rb
class Test::Unit::TestCase

  # tests the object built by factory girl
  def self.should_have_valid_factory
    name = self.name.gsub(/Test$/, '').underscore
    should "have valid factory for :#{name}" do
      assert_valid Factory.build(name.intern)
    end
  end

end
