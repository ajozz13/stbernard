class CreateMedicationRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_routes do |t|
      t.integer :route

      t.timestamps
    end
  end
end
