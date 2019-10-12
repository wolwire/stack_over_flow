class Question < ApplicationRecord

  #has_many :comments
  has_many :answers
  has_and_belongs_to_many :tags
  has_many  :vote, as: :votable, dependent: :destroy
  belongs_to :user, ->{where activated: true}
  validates :header , presence: true, length: {maximum: 100, too_long: "%{count} characters is the maximum allowed" }
  validates :content, presence: true, length: {maximum: 30000,too_long: "%{count} characters is the maximum allowed" }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true

  private


  def picture_size
    if picture.size>5.megabyte
      errors.add(:picture , "should be less than 5MB")
    end
  end

end
