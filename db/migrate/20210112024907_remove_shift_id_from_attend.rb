class RemoveShiftIdFromAttend < ActiveRecord::Migration[6.1]
  def change
    remove_column :attends, :shift_id, :integer
  end
end
