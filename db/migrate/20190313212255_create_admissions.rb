class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.datetime :moment
      t.integer :patient_id
      t.integer :diagnosis_id
      t.integer :symptom_id
      t.integer :observation_id
      t.timestamps
    end
  end
end
