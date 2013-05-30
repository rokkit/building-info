class CreateAnentrances < ActiveRecord::Migration
  def change
    create_table :anentrances do |t|
      t.string :name

      t.timestamps
    end
  end
end
