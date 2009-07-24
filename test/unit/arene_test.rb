require 'test_helper'

class AreneTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Arene.new.valid?
  end
end
