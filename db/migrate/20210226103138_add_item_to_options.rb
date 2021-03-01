class AddItemToOptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :options, :item, null: false, foreign_key: true
  end
end
