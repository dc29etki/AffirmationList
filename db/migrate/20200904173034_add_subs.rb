class AddSubs < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :sub1, :string
    add_column :categories, :sub2, :string
    add_column :categories, :sub3, :string
    add_column :categories, :sub4, :string
    add_column :categories, :sub5, :string
  end
end
