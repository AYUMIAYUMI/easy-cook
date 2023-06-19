class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.text   :image
      t.string :dish
      t.string :persons
      t.string :material
      t.string :amount
      t.text   :make_one
      t.text   :make_two
      t.text   :make_three
      t.text   :make_four
      t.text   :make_five
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
