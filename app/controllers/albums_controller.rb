class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render :index
    # render file: "#{Rails.root}/app/views/albums/index.html.erb", layout: false
    # render file: "#{Rails.root}/app/views/hello.html.erb", layout: false
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update
    @album= Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end


  private
    def album_params
      params.require(:album).permit(:name, :genre)
    end
end