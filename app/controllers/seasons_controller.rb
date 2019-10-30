class SeasonsController < ActionController::API

  def index
    @seasons = Season.all
    render json: @seasons#.to_json(only: [:season, :city],
                          #include: [housewife: {only: [:firstname, :lastname]}])
  end

  def show
    @season = Season.find(params[:id])
    render json: @season#.to_json(only: [:season, :city],
                          #include: [housewife: {only: [:firstname, :lastname]}])
  end

end
