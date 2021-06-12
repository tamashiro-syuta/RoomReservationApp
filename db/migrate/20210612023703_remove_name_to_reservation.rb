class RemoveNameToReservation < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :name
  end
end
