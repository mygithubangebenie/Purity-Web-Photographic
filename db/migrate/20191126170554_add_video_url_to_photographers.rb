class AddVideoUrlToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :video_url, :string
  end
end
