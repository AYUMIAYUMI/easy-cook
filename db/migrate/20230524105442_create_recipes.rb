class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :dish,      null: false
      t.string :persons,   null: false
      t.string :material,  null: false
      t.string :amount,    null: false
      t.text   :make_one,  null: false
      t.text   :make_two,  null: false
      t.text   :make_three
      t.text   :make_four
      t.text   :make_five
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
