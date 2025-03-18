class MoviesController < ApplicationController
  def show
    movies = Movie.all
    movies.each do |movie|
      puts movie.nombre
    end
  

  def delete
    @eliminar = Movie.find(params[:id])  # Busca la película por ID
    @eliminar.destroy  # Elimina la película
    redirect_to movies_path, notice: "Película eliminada exitosamente"
  end
end
