class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :amount
      t.references :donor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
