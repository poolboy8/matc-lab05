require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( name: 'Bart Simpson', 
                      email: 'bsimpson@msn.com',
                      password: 'a',
                      password_confirmation: 'a' )
  end
  
  test "should be valid" do
    assert @user.valid?
  end

  test "requires a name to be at least 3 chars" do
    @user.name = "bs"
    assert_not @user.valid?
  end
  
  test "requires an email to be at least 6 chars" do
    @user.email = "b@s.c"
    assert_not @user.valid?
  end


end
