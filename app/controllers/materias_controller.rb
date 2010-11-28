require 'rexml/document'
include REXML

class MateriasController < BaseController
  def index
  end

  def list
    @materias = Materia.all
    render :xml => @materias

  end

  def show
      @materia = Materia.find(params[:id])
  end

  def load_from_ws
  end

  def get_all
	end

	def info_subject
		codigo = params[:c]
		@doc = Materia.get_by_code codigo
		render :xml => @doc
	end
end
