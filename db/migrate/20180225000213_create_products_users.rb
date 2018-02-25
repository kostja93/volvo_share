class CreateProductsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :products_users do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
