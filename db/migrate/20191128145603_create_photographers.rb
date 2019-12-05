class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :contact
      t.date :upload_date
      t.string :image
      t.string :description
      t.string :video

      t.timestamps
    end
  end
end
