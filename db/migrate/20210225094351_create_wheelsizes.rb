class CreateWheelsizes < ActiveRecord::Migration[6.1]
  def change
    create_table :wheelsizes do |t|
      t.integer :Size
    end
  end
end
