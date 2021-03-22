class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
  end

  def tag_params
      params.require(:tag).permit(:name)
  end 
  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find(params[:id])
  end

end
