class Project < ActiveRecord::Base
  attr_accessible :titolo, :data_lavori, :localita, :descrizione, :descr_breve, :folder, :copertina, :copertina_thumbnail
  has_many :attachment
  
  def path
    "#{read_attribute(:folder)}/#{read_attribute(:copertina)}"
  end
  
end
