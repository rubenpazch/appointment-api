class AddEndDate < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :endDate, :date
  end
end
