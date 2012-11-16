class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :voce
      t.integer :priority
      t.string :language

      t.timestamps
    end
  end
end
