class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :housewife_id, :user_id, :housewife
  belongs_to :housewife
  belongs_to :user

  def housewife
    self.object.housewives.map do |fav_obj|
      fav_obj.id
    end
  end

end

