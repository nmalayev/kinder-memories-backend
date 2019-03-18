class Post < ApplicationRecord
  # Only permit post_type attribute to have the following three values:
  # validates :post_type, inclusion: { in: %w(photo video letter)}
  validates :memory_date, presence: true
  belongs_to :timeline
  belongs_to :user
end
