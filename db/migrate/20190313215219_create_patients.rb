class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.datetime :dob
      t.integer :gender
      t.integer :admission
      t.integer :allergies
      t.integer :chronic_conditions
      t.integer :medications
      t.integer :diagnostic_procedures
      t.integer :diagnoses
      t.integer :treatments

      t.timestamps
    end
  end
end
