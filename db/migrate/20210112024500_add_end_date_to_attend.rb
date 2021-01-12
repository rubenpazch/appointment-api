class AddEndDateToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :endDate, :date
  end
end
