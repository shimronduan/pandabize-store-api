class AddOptionToCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_reference :customizations, :option, null: false, foreign_key: true
  end
end
