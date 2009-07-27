require 'test_helper'

class PromoteurTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Promoteur.new.valid?
  end
end
