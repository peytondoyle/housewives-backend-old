class FavoritesController < ActionController::API

    def create
      # byebug
      favorite = Favorite.find_or_create_by(favorite_params)
      render json: favorite
    end

    def show
      favorite = Favorite.find(params[:id])
      render json: favorite
    end

    def index
      render({json: Favorite.all})
    end

    def destroy
      @favorite = Favorite.find(params[:id])
      @favorite.destroy
      render json:@favorite
    end

    def favoritesByUser
      user = User.find(params[:id])
      favorite = Favorite.where(user_id: user)
      render json: favorite
    end

    def getAllHousewifeFavorites
      housewife = Housewife.find(params[:id])
      favorite = Favorite.where(housewife_id: housewife)
      render json: favorite
    end

    private

    def favorite_params
      params.permit(:housewife_id, :user_id)
    end


  end

