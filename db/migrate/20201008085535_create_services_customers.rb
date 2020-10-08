class CreateServicesCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :services_customers do |t|
      t.references :service, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
