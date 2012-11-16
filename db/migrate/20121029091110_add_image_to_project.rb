class AddImageToProject < ActiveRecord::Migration
  def change
    add_column :projects, :copertina, :string
    add_column :projects, :copertina_thumbnail, :string
  end
end
