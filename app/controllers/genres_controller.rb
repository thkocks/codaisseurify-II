class GenresController < ApplicationController
  def set_genre
    @genre = Genre.find(params[:id])
  end
end
