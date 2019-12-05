class AddRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :photographer, foreign_key: true
  end
end
