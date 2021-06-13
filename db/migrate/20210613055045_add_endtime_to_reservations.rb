class AddEndtimeToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :endtime, :datetime
  end
end
