class Question < ApplicationRecord
  belongs_to :user, inverse_of: :questions
  has_many :answers, inverse_of: :question, dependent: :destroy
  has_and_belongs_to_many :tags
  include Commentable, Votable

  validates :header , presence: true, length: {maximum: 100}
  validates :content, presence: true, length: {maximum: 30000,too_long: "%{count} characters is the maximum allowed" }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true

  def add_tags(args)
    args.each do |arg|
      tag=Tag.find_by(name: arg)
      if tag.nil?
        self.tags<<Tag.create(name:arg)
      else
        self.tags<<tag
      end
    end
  end

  def upvote(vote)
    vote = check_vote(vote)
    increment!(:votes,vote)
  end

  def downvote(vote)
    vote = check_vote(vote)
    decrement!(:votes,vote)
  end


  private


  def check_vote(vote)
    if (vote > 1)
      1
    elsif (vote < -1)
      -1
    else
      vote
    end
  end

  def picture_size
    if picture.size>5.megabyte
      errors.add(:picture , "should be less than 5MB")
    end
  end

end
