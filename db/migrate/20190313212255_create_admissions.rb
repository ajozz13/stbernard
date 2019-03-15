class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.datetime :moment
      t.ingeger :patient_id
=begin
      t.integer :diagnosis_id
      t.integer :symptom_id
      t.integer :observation_id
=end
      t.timestamps
    end
  end
end
