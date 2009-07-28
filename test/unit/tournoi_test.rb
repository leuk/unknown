require 'test_helper'

class TournoiTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tournoi.new.valid?
  end
end
