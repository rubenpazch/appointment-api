class AddStartDateToShift < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :startDate, :date
  end
end
