require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "project has a correct path" do
    project = Project.find(projects(:one))
    assert_match "new_string/copertina_1", project.path
  end
end
