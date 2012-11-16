require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  
  #def test_should_be_valid
  #  assert Attachment.new.valid?
  #end
  
  test "project has more attachments" do
    attax = Attachment.all
    assert_equal 2, attax.size
  end
  
  test "project has project_id " do
      attax = Attachment.first
      assert_equal 1, attax.project_id
    end
  
  test "attachment has a full path" do
    attax = Attachment.all_with_path(projects(:one))
    assert attax.all? { |a| a.path == "new_string/project_#{a.id}" }
  end
  
  test "find attachments for project" do
    attax = Attachment.find_attax(projects(:one))
    assert_equal 2, attax.size
  end
  
  test "find no attachments for project" do
      attax = Attachment.find_attax(projects(:two))
      assert_equal 0, attax.size
    end
  
end
