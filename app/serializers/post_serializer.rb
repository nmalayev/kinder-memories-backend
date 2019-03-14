class PostSerializer < ActiveModel::Serializer
  attributes :id, :post_type, :title, :description, :letter, :image, :video, :timeline_id, :user_id, :created_at
  belongs_to :timeline
  belongs_to :user
end
