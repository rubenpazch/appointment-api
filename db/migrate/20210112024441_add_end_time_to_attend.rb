class AddEndTimeToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :endTime, :time
  end
end
