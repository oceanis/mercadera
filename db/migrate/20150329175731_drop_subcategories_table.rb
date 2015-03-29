class DropSubcategoriesTable < ActiveRecord::Migration
  def change
    drop_table :subcategories
    rename_column :listings, :subcategory_id, :category_id
  end
end
