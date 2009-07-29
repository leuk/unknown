require 'test_helper'

class LutteurTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Lutteur.new.valid?
  end
end
