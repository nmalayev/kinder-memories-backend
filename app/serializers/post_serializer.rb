class PostSerializer < ActiveModel::Serializer
  attributes :id, :post_type, :title, :description, :letter, :timeline_id, :poster, :created_at
  belongs_to :timeline
end
