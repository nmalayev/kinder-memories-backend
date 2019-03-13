class Post < ApplicationRecord
  # Only permit poster attribute to have the following values:
  validates :poster, inclusion: { in: %w(parent grandparent sibling aunt/uncle cousin friend)}

  # Only permit post_type attribute to have the following three values:
  validates :post_type, inclusion: { in: %w(photo video letter)}

  # default value for letter to be ''

  belongs_to :timeline
end
