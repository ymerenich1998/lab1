class PhotosController < ApplicationController
before_action :authenticate_user!
  def index
  	@photos = Photo.all
  end

  def new
  	@photo=Photo.new
  end

  def create
  	params[:photo][:category_id]= params[:category_id]
  	params[:photo][:user_id]= current_user.id
  	@photo = Photo.create(@photo_params)
  	redirect_to photos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

	def photo_params
		params.require(:photo).permit(:user_id, :category_id, :name, :photo)
	end

end
