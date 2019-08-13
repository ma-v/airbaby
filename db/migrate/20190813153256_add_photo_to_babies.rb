class AddPhotoToBabies < ActiveRecord::Migration[5.2]
  def change
    add_column :babies, :photo, :string
  end
end
