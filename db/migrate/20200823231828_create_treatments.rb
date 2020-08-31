class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.integer :casenum
      t.string :name
      t.boolean :insurance
      t.string :treatmentplan

      t.timestamps
    end
  end
end
