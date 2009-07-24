require 'test_helper'

class ArbitreTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Arbitre.new.valid?
  end
end
