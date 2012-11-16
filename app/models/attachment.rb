class Attachment < ActiveRecord::Base
  attr_accessible :project_id, :indirizzo, :file
  attr_accessor :path
  belongs_to :project
  
  def self.all_with_path(project)
    attax = Attachment.where("project_id = ?", project)
    attax.each { |a| a.path = "#{a.project.folder}/#{a.indirizzo}"}
  end
  
  def self.find_attax(project)
    attax = Attachment.where("project_id = ?", project)
  end
  
end
