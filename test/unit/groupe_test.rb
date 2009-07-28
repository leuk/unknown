require 'test_helper'

class GroupeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Groupe.new.valid?
  end
end
