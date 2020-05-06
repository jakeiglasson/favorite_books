class RemoveCoverPictureFromBook < ActiveRecord::Migration[6.0]
  def change

    remove_column :books, :cover_picture, :text
  end
end
