class PostSerializer < ActiveModel::Serializer
  attributes :id, :post_type, :title, :description, :letter, :photo, :video, :timeline_id, :user_id, :created_at, :memory_date, :file_url
  belongs_to :timeline
  belongs_to :user
end
