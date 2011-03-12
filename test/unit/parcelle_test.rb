require 'test_helper'

class ParcelleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Parcelle.new.valid?
  end
end
