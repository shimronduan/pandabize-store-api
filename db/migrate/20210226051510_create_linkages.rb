class CreateLinkages < ActiveRecord::Migration[6.1]
  def change
    create_table :linkages do |t|
      t.references :parent, index: true, foreign_key: {to_table: :options}
      t.references :child, index: true, foreign_key: {to_table: :options}
    end
  end
end
