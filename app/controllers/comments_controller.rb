class CommentsController < ApplicationController
  def create
      @micropost = Micropost.find(params[:micropost_id])
      @comment = @micropost.comments.create(comment_params)
      redirect_to root_url
    end


   
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
end
