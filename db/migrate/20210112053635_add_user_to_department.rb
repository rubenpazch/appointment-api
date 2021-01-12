class AddUserToDepartment < ActiveRecord::Migration[6.1]
  def change
    add_reference :departments, :user, null: false, foreign_key: true
  end
end
