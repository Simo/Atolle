class CreateAccordions < ActiveRecord::Migration
  def self.up
    create_table :accordions do |t|
      t.string :titolo
      t.string :indirizzo
      t.string :alt_text
      t.string :caption_text
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :accordions
  end
end
