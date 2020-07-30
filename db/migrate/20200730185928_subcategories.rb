class Subcategories < ActiveRecord::Migration[5.2]
  def change
    add_column :affirmations, :sub1, :string
    add_column :affirmations, :sub2, :string
    add_column :affirmations, :sub3, :string
  end
end
