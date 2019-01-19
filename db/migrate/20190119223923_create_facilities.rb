class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :title
      t.string :location
      t.integer :capacity
      t.string :environment
      t.string :reviews
      t.string :comments
      t.string :description

      t.timestamps
    end
  end
end
