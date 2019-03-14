class Post < ApplicationRecord
  # Only permit post_type attribute to have the following three values:
  validates :post_type, inclusion: { in: %w(photo video letter)}

  belongs_to :timeline
  belongs_to :user
end
