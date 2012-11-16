class AddPicturebigToProject < ActiveRecord::Migration
  def change
    add_column :projects, :BigPicture, :string
  end
end
