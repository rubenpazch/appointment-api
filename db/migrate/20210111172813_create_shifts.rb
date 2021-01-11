class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :name
      t.integer :duration
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
