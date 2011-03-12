require 'test_helper'

class DossierTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Dossier.new.valid?
  end
end
