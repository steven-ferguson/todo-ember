class Todo < ActiveRecord::Base
  validates :title, presence: true
  before_create :set_is_completed_to_false, :set_priority

private
  def set_is_completed_to_false
    self.is_completed = false
    true
  end

  def set_priority
    self.priority = 5
  end
end