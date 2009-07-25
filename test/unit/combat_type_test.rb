require 'test_helper'

class CombatTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CombatType.new.valid?
  end
end
