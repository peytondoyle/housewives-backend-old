class HousewivesController < ActionController::API

  def index
      render({json: Housewife.all})
  end

  def show
  @housewife = Housewife.find(params[:id])
  render json: @housewife
  end

end
