class MoviesController < ApplicationController
  def show
    @mostrar = Movie.find(1)
  end

  def delete
    @eliminar = Movie.find(1)
    @eliminar.destroy
  end
 
end
