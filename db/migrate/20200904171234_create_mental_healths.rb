class CreateMentalHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :mental_healths do |t|
      t.string :affirmation
      t.string :sub1
      t.string :sub2
      t.string :sub3
      t.string :sub4
      t.string :sub5
      t.string :tags
    end
  end
end
