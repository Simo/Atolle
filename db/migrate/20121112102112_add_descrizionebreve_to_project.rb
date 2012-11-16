class AddDescrizionebreveToProject < ActiveRecord::Migration
  def change
    add_column :projects, :descr_breve, :string
  end
end
