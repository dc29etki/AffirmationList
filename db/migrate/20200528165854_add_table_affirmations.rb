class AddTableAffirmations < ActiveRecord::Migration[5.2]
  def change
    create_table :affirmations do |t|
      t.string :category
      t.string :affirmation
    end
  end
end
