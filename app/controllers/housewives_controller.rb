class HousewivesController < ActionController::API

  def index
    housewives = Housewife.all
    render json: housewives, include: [:taglines, :ratings]
  end

  def show
    @housewife = Housewife.find(params[:id])
    render json: @housewife
  end


end
