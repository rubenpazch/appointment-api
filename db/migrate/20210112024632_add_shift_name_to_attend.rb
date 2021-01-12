class AddShiftNameToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :shiftName, :string
  end
end
