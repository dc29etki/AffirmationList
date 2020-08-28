class AddSafeNameCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_safe, :string
  end
end
