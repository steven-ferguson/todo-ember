class AddColumnPriority < ActiveRecord::Migration
  def change
    add_column :todos, :priority, :integer
  end
end
