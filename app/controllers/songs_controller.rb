class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = @album.songs.new
  end

  def create
    @artist = @album.artist
    @song = Song.create(song_params.merge(album: @album, artist: @artist))
    if @song.save, notice: 'Song added'
      redirect_to @song
    else
      render "new"
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @album = @song.album
    @artist = @song.artist
    @song.destroy

    redirect_to artists_path
  end
end

private

def song_params
  params.require(:song).permit(:name, :released, :image_url)
end
