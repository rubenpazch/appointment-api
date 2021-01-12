class AddStartDateToAttend < ActiveRecord::Migration[6.1]
  def change
    add_column :attends, :startDate, :date
  end
end
