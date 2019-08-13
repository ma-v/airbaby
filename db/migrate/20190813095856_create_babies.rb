class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :title
      t.string :age
      t.string :gender
      t.text :description
      t.integer :price_per_day
      t.boolean :clean
      t.boolean :sleepy
      t.boolean :excited
      t.boolean :crying
      t.boolean :fat
      t.boolean :playful
      t.boolean :funny
      t.boolean :public
      t.boolean :animals
      t.boolean :speaks
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
