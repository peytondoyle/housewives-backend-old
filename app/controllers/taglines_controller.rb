class TaglinesController < ActionController::API

  def index
    @taglines =  Tagline.all
    render json: @taglines.to_json(only: [:tagline, :season_id],
                          include: [housewife: {only: [:firstname, :lastname]}])
  end

  def show
    @tagline = Tagline.find(params[:id])
    render json: @tagline.to_json(only: [:tagline, :season_id],
                          include: [housewife: {only: [:firstname, :lastname, :image]}])
  end

end
