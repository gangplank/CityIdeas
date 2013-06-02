class CommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.new(params[:comment])
    @comment.user_id = current_user.id if current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @idea, notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to @idea, notice: 'Comment not created.' }
      end
    end
  end
  
  def destroy
    @idea = Idea.find(params[:idea_id])
    @idea.comments.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to @idea }
      format.json { head :no_content }
    end
  end
  

end