class RatingsController < ActionController::API

    def create
      # byebug
      rating = Rating.create(rating_params)
      render json: rating
    end

    def show
      rating = Rating.find(params[:id])
      render json: rating
    end

    def index
        render({json: Rating.all})
    end

    def update
      # byebug
      originalrating = Rating.find(params[:id])
      editRating = originalrating.update(rating_params)
      newrating = Rating.find(params[:id])
      render json: newrating
    end

    def destroy
      @rating = Rating.find(params[:id])
      @rating.destroy
      # redirect_to '/patients/new', :notice => "Your patient has been deleted"
    end

    def ratingsByUser
      user = User.find(params[:id])
      rating = Rating.where(user_id: user)
      render json: rating
    end

    def getAllHousewifeRatings
      housewife = Housewife.find(params[:id])
      rating = Rating.where(housewife_id: housewife)
      render json: rating
    end

    private

    def rating_params
      params.permit(:rating, :user_id, :housewife_id)
      # params.permit(:rating, :user_id, :housewife_id, :id)
    end


  end

