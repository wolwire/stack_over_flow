class Comment < ApplicationRecord
  belongs_to :commentable , polymorphic: true, inverse_of: :comment
  belongs_to :user, inverse_of: :comments

  validates :content, presence: true, length: {maximum: 100, minimum: 15}
end
