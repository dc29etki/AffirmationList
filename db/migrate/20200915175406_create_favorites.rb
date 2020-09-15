class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.string :affirmation
      t.string :cat
      t.string :sub

      t.timestamps
    end
  end
end
