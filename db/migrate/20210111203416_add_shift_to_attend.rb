class AddShiftToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :shift_id, :integer
  end
end
