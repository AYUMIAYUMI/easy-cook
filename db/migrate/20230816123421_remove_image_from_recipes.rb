class RemoveImageFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :image, :text
  end
end
