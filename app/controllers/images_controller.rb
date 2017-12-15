class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_image, only: [:edit,:update,:destroy]
  def index
  	@images=Image.all
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end

  def create
  	@user = current_user

  	if params[:images]
  		params[:images].each {|image| 
  		@files = @user.images.create(image: image)
  	}
  end
  redirect_to images_path
  end

  private

  def image_params
    params.require(:images).permit(:user_id, :image)
  end

def set_image
      @image = Image.find(params[:id])
    end
end
