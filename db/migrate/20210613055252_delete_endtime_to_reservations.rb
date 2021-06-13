class DeleteEndtimeToReservations < ActiveRecord::Migration[6.0]
  def up
    add_column :reservations, :end_time, :datetime
  end

  def down 
    remove_column :reservations, :endtime, :datetime
  end
end
