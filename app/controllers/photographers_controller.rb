class PhotographersController < ApplicationController
  before_action :set_photographer, only: [:show, :edit, :update, :destroy]
 
  def index
    @photographers = Photographer.all
    # @photographers = Photographer.search(params[:search], params[:id])
  end

  def show
    @comments = Comment.where(photographer_id: @photographer)
  end

  def new
    @photographer = current_user.photographers.build
    @galleries = Gallery.all
  end

  def edit
  end

  def create
    @photographer = current_user.photographers.build(photographer_params)
    respond_to do |format|
      if @photographer.save
        format.html { redirect_to @photographer, notice: 'Photographer was successfully created.' }
        format.json { render :show, status: :created, location: @photographer }
      else
        format.html { render :new }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @photographer.update(photographer_params)
        format.html { redirect_to @photographer, notice: 'Photographer was successfully updated.' }
        format.json { render :show, status: :ok, location: @photographer }
      else
        format.html { render :edit }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photographer.destroy
    respond_to do |format|
      format.html { redirect_to photographers_url, notice: 'Photographer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_photographer
      @photographer = Photographer.find(params[:id])
    end
    def find 
      @galleries=Gallery.all
      @galleries.each do |gallery|
    unless current_user.id==gallery.user_id 
      redirect_to photographers_url, notice: 'create garelly first.'
    end
    end
    end
   
    def photographer_params
      params.require(:photographer).permit(:upload_date, :image, :description, :video)
    end
end
