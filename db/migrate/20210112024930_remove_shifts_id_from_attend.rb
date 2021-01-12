class RemoveShiftsIdFromAttend < ActiveRecord::Migration[6.1]
  def change
    remove_column :attends, :shifts_id, :integer
  end
end
