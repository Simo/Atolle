class Menu < ActiveRecord::Base
  attr_accessible :language, :priority, :voce, :link
  attr_accessor :path
  
  def voice_with_link
    self.path = "#{self.link}_path"
  end
  
  def self.all_with_path
    menus = Menu.all
    menus.each { |menu| menu.voice_with_link }
  end
  
end
