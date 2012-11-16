class AddFolderToProject < ActiveRecord::Migration
  def change
    add_column :projects, :folder, :string
  end
end
