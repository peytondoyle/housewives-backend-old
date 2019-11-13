class CommentsController < ActionController::API

    def create
      comment = Comment.find_or_create_by(comment_params)
      render json: comment
    end

    def show
      @comment = Comment.find(params[:id])
      render json: @comment.to_json
    end

    def index
      @comments = Comment.all
      render json: @comments.to_json
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json:@comment
    end

    def commentsByUser
      user = User.find(params[:id])
      comment = Comment.where(user_id: user)
      render json: comment
    end

    def getAllHousewifeComments
      housewife = Housewife.find(params[:id])
      comment = Comment.where(housewife_id: housewife)
      render json: comment
    end

    private

    def comment_params
      params.permit(:comment, :housewife_id, :user_id)
    end


  end

