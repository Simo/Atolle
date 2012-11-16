require 'test_helper'

class AccordionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Accordion.new.valid?
  end
end
