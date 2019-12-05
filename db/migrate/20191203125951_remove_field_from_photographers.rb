class RemoveFieldFromPhotographers < ActiveRecord::Migration[5.2]
  def change
    remove_column :photographers, :name, :string
    remove_column :photographers, :email, :string
    remove_column :photographers, :address, :string
    remove_column :photographers, :contact, :string
  end
end
