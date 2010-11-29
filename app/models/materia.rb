require 'rexml/document'
include REXML

class Materia < ActiveRecord::Base

    validates_uniqueness_of :code

  def self.load_from_xml
    Document.new(File.new("public/materias.xml"))
  end

end
