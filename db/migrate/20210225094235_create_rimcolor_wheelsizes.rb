class CreateRimcolorWheelsizes < ActiveRecord::Migration[6.1]
  def change
    create_table :rimcolor_wheelsizes do |t|
      t.belongs_to :color
      t.belongs_to :wheelsize
    end
  end
end
