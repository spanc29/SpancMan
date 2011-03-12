require 'test_helper'

class CompteurTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Compteur.new.valid?
  end
end
