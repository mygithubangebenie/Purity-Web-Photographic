class CommentsController < ApplicationController
    before_action :find_photographer
    before_action :find_comment, only: [:destroy, :edit , :update]

 def create
  @comment = @photographer.comments.create(params[:comment].permit(:name, :email))
  @comment.save
   if @comment.save
     redirect_to photographer_path(@photographer)
   else
    redirect_to photographer_path(@photographer)
   end
  end

  def destroy
    @comment.destroy
    redirect_to photographer_path(@photographer)
  end

  def edit
  end

   def update
     if @comment.update(params[:comment].permit(:name, :email))
     redirect_to photographer_path(@photographer)
    else
      render 'edit'
     end
    end

  private

  def find_photographer
   @photographer = Photographer.find(params[:photographer_id])
  end

  def find_comment
    @comment = @photographer.comments.find(params[:id])
  end
end


