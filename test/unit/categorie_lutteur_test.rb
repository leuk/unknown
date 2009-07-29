require 'test_helper'

class CategorieLutteurTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CategorieLutteur.new.valid?
  end
end
