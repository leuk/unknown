require 'test_helper'

class UsersTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Users.new.valid?
  end
end
