class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :address_1
      t.string :address_2
      t.integer :phone

      t.timestamps
    end
  end
end
