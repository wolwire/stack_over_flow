class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many  :vote, as: :votable, dependent: :destroy
  validates :content, presence: true, length: {maximum: 30000,too_long: "%{count} characters is the maximum allowed" }
  mount_uploader :picture, PictureUploader



  private
  def picture_size
    if picture.size>5.megabyte
      errors.add(:picture , "should be less than 5MB")
    end
  end


end
