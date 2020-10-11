class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :user, null: true, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.integer :fee
      t.timestamps
    end
  end
end
