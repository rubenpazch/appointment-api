class DropShifts < ActiveRecord::Migration[6.1]
  def change
    drop_table :shifts
  end
end
