class FavoritesController < ActionController::API

    def create
      # byebug
      favorite = Favorite.find_or_create_by(favorite_params)
      render json: favorite
    end

    def show
      @favorite = Favorite.find(params[:id])
      render json: @favorite.to_json(only: [:id, :housewife_id, :user_id],
                                  include: [housewife: {only: [:firstname, :lastname, :image]}])
    end

    def index
      @favorites = Favorite.all
      render json: @favorites.to_json(only: [:id, :housewife_id, :user_id],
                                  include: [housewife: {only: [:firstname, :lastname, :image]}])
    end

    # def index
    #   @taglines =  Tagline.all
    #   render json: @taglines.to_json(only: [:tagline, :season_id],
    #                         include: [housewife: {only: [:firstname, :lastname]}])
    # end
    #
    # def show
    #   @tagline = Tagline.find(params[:id])
    #   render json: @tagline.to_json(only: [:tagline, :season_id],
    #                         include: [housewife: {only: [:firstname, :lastname, :image]}])
    # end

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

