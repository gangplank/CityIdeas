class CommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @idea, notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to @idea, notice: 'Comment not created.' }
      end
    end
  end

end