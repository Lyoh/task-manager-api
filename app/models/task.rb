class Task < ApplicationRecord
  belongs_to :user

  # validates_presence_of :title, :user_id
  validates :title, :user_id, presence: true

  def short_description
    self.description[0..40]
  end

  def late?
    Time.current > self.deadline if self.deadline.present?
  end

end
