class CreateFrequencyUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :frequency_units do |t|
      t.integer :hour

      t.timestamps
    end
  end
end
