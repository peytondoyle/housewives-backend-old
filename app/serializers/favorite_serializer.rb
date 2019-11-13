class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :housewife_id, :user_id
  belongs_to :housewife
  belongs_to :user
end
