class HousewivesController < ActionController::API

  def index
    housewives = Housewife.all
    render json: housewives, include: [:taglines]
  end

  def show
    @housewife = Housewife.find(params[:id])
    render json: @housewife
  end

  def atl_housewives
    housewives = Housewife.all
    housewives.select { |housewife| housewife.seasons.first.city == "Atlanta" }
  end

end
