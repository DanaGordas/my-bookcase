class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :year
      t.text :description
      t.string :original_language
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
