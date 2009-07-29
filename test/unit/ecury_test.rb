require 'test_helper'

class EcuryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ecury.new.valid?
  end
end
