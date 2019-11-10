class RatingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :housewife_id
  belongs_to :user
  belongs_to :housewife
end
