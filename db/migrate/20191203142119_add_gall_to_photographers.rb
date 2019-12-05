class AddGallToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_reference :photographers, :gallery, foreign_key: true
  end
end
