class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors do |t|
      t.string :donor
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
