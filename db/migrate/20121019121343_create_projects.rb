class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :titolo
      t.date :data_lavori
      t.string :localita
      t.string :descrizione
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
