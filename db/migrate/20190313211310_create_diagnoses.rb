class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.integer :patient_id
      t.string :coding_systen
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
