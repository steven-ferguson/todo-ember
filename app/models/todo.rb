class Todo < ActiveRecord::Base
  validates :title, presence: true
  before_create :set_isCompleted_to_false

private
  def set_isCompleted_to_false
    self.isCompleted = false
  end
end