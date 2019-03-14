class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.integer :patient_id
      t.text :description
      t.text :necesity

      t.timestamps
    end
  end
end
