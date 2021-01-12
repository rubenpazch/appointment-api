class AddStartTimeToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :startTime, :time
  end
end
