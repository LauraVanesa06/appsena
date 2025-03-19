class MoviesController < ApplicationController
  def show
    
    @movies = Movie.all
    @movies.each do |movie|
 
    end
  end

  def delete
    @eliminar = Movie.find(params[:id])  
    @eliminar.destroy 

  end
end
