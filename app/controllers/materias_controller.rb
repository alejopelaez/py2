require 'rexml/document'
include REXML

class MateriasController < BaseController
  def index
  end

  def list
      @materias = Materia.all
  end

  def show
      @materia = Materia.find(params[:id])
  end

  def load_from_ws
  end

  def load_from_xml
    begin
      @materias = Materia.load_from_xml

      @materias.elements.each("materias/materia") do |m|
        materia = Materia.find_by_code(m.attributes["codigo"])
        materia = Materia.new if(materia == nil)
        materia.name =        m.attributes["nombre"]
        materia.code =        m.attributes["codigo"]
        materia.credits =     m.attributes["creditos"]
        materia.umes =        m.attributes["umes"]
        materia.professor =   m.elements["profesor"].attributes["nombre"]
        materia.description = m.elements["descripcion"].text
        materia.homepage =    m.elements["homepage"].attributes["url"]
        materia.program =     m.elements["programa"].attributes["url"]

        materia.save
      end

    rescue Exception => e
      puts "Error ---- #{e.message} ------"
    end
    redirect_to :action => :list
  end
end
