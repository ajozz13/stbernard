class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name
      t.integer :unit
      t.decimal :dosage
      t.integer :route
      t.integer :frequency

      t.timestamps
    end
  end
end
