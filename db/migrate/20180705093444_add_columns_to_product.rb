class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :product_prices, :orignalsku, :string
    add_column :product_prices, :barcode, :string
    add_column :product_prices, :searched, :string
    add_column :product_prices, :eur, :string
  end
end
