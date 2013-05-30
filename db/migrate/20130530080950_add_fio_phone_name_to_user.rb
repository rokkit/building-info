class AddFioPhoneNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :fio, :string
    add_column :users, :phone, :string
    add_column :users, :name, :string
  end
end
