class PlaylistsController < ApplicationController

  def index

  end

  def new
    @playlist = Playlist.new
  end

  def create
    # byebug
    @playlist = Playlist.create(playlist_params)
    redirect_to @playlist
  end

  def show
    @playlist = Playlist.find_by(id: params[:id])
    # byebug
  end

  private
    def playlist_params
      params.require(:playlist).permit(:name, song_ids: [])
    end

end
