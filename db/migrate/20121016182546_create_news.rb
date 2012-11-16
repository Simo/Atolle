class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :titolo
      t.string :corpo
      t.string :breve
      t.date :pubblicazione
      t.string :autore

      t.timestamps
    end
  end
end
