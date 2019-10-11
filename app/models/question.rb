class Question < ApplicationRecord
  belongs_to :user, ->{where activated: true}
  validates :content, presence: true, length: {maximum: 30000}
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true





  private
  def picture_size
    if picture.size>5.megabyte
      errors.add(:picture , "should be less than 5MB")
    end
  end

end
