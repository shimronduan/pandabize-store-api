class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :customer
      t.belongs_to :bicycle
      t.timestamps
    end
  end
end
