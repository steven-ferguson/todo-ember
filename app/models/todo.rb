class Todo < ActiveRecord::Base
  validates :title, presence: true
  before_create :set_is_completed_to_false

private
  def set_is_completed_to_false
    self.is_completed = false
    true
  end
end