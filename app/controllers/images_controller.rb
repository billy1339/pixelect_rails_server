class ImagesController < ApplicationController

  def index
    @images = Image.all
    render json: @images
  end

  def show
    @image = Image.find(params[:id])
    if @image
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def create
    @image = Image.new(allowed_params)

    if @image.save
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(allowed_params)
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find(params[:id])

    if @image.destroy
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:image).permit(:file_name, :image_file, :image_url, :flag, :image_set_id)
  end

end
