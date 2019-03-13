class CreateMassUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :mass_units do |t|
      t.integer :unit

      t.timestamps
    end
  end
end
