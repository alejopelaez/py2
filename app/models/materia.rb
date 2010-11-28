class Materia < ActiveRecord::Base

	def self.all
		Document.new(File.new("public/materias.xml"))
	end

	def self.get_by_code code
		doc = Document.new(File.new("public/materias.xml"))
		doc.root.elements["materia[@codigo='#{code}']"]
	end
end
