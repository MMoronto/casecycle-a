class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.text :name
      t.text :Specialty

      t.timestamps
    end
  end
end
