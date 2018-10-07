class AddPaidToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :paid, :boolean
  end
end
