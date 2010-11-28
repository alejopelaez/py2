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

end
