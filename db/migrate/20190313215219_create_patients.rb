class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :honorific
      t.datetime :dob
      t.integer :gender
      t.integer :admission
      t.integer :facility_id
      t.integer :admission_id

      t.timestamps
    end
  end
end
