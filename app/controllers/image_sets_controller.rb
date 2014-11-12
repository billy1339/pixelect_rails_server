class ImageSetsController < ApplicationController

  def index
    @image_sets = ImageSet.all
    render json: @image_sets
  end

  def show
    @image_set = ImageSet.find(params[:id])
    if @image_set
      # render :json => @programs, :include => {:insurer => {:only => :name}}
        render :json => @image_set, :include => :images, status: :created, location: @image_set
     # to render multiple things do :include => [:images, :comments]
    else
      render json: @image_set.errors, status: :unprocessable_entity
    end
  end

  def create
    @image_set = ImageSet.new(allowed_params)

    if @image_set.save
      render json: @image_set, status: :created, location: @image_set
    else
      render json: @image_set.errors, status: :unprocessable_entity
    end
  end

  def update
    @image_set = ImageSet.find(params[:id])

    if @image_set.update(allowed_params)
      render json: @image_set, status: :created, location: @image_set
    else
      render json: @image_set.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @image_set = ImageSet.find(params[:id])

    if @image_set.destroy
      render json: @image_set, status: :created, location: @image_set
    else
      render json: @image_set.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:image_set).permit(:voting_criteria, :total_likes, :user_id)
  end

end
