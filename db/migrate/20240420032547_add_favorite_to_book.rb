class AddFavoriteToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :favorite, :boolean
  end
end
