class AddOrderToCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_reference :customizations, :order, null: false, foreign_key: true
  end
end
