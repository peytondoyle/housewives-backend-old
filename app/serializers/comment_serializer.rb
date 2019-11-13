class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :housewife_id, :user_id
  belongs_to :housewife
  belongs_to :user
end
