class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reserved_on
      t.datetime :returned_on
      t.integer :book_id
      t.datetime :due_at
      t.string :reserved_by

      t.timestamps null: false
    end
  end
end
