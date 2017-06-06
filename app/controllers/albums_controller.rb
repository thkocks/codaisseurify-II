class AlbumsController < ApplicationController
    def index
      @albums = Album.all
    end

    def show
      @album = Album.find(params[:id])
    end

    def new
      @album = Album.new
    end

    def create
      @album = Album.all.build(album_params.merge(artist: @artist))
      # @album = Album.new(album_params)
      if @album.save, notice: 'Album added'
        redirect_to @album
      else
        render "new"
      end
    end

    def edit
      @album = Album.find(params[:id])
    end

    def update
      @album = Album.find(params[:id])
      if @album.update_attributes(album_params)
        redirect_to @album
      else
        render 'edit'
      end
    end

    def destroy
      @album = Album.find(params[:id])

      @album.destroy

      redirect_to artist_path(@album.artist.id)
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :released, :description, :image_url)
  end
