class AddShiftToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :shift_id, :integer
    add_reference :attends, :shifts, null: false, foreign_key: true
  end
end
