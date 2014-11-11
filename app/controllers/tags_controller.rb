class TagssController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags
  end

  def show
    @tag = Tag.find(params[:id])
    if @tag
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def create
    @tag = Tag.new(allowed_params)

    if @tag.save
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def update
    @tag = Tag.find(params[:id])

    if @tag.update(allowed_params)
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tag = Tag.find(params[:id])

    if @tag.destroy
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:tag).permit(:tag_name, :image_set_id)
  end

end
