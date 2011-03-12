require 'test_helper'

class ListeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Liste.new.valid?
  end
end
