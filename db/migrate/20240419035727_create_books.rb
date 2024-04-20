class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :number
      t.integer :pages
      t.integer :index
      t.string :title
      t.string :originalTitle
      t.string :releaseDate
      t.string :description
      t.string :cover

      t.timestamps
    end
  end
end
