class AddPricetoFacility < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :price, :integer
  end
end
