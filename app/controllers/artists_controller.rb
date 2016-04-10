class ArtistsController < ApplicationController

  def index

  end

  def new
    @artist = Artist.new
  end

  def create
    # byebug
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist.id)
    else
      render :new
    end

  end

  def show
    # byebug
    @artist = Artist.find(params[:id])
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :image_path) # TODO how does it access the
                                                          # values in artist? Because it's an instance
                                                          # variable and it knows that :artist references
                                                          # @artist?
    end

end
