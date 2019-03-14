class User < ApplicationRecord
#   validates :relation, inclusion: { in: %w(parent grandparent sibling aunt/uncle cousin friend)}

  has_many :posts
  has_many :timelines, through: :posts
end
