class News < ActiveRecord::Base
  attr_accessible :autore, :breve, :corpo, :pubblicazione, :titolo
  
  def self.prima_pagina
    @news = News.find(:all, :order => "pubblicazione DESC", :limit => 2)
  end
  
end
