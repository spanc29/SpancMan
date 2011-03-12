require 'test_helper'

class ListePieceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ListePiece.new.valid?
  end
end
