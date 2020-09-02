class AddPinToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :pinned, :boolean
  end
end
