require 'test_helper'

class ImmeubleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Immeuble.new.valid?
  end
end
