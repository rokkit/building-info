class CreateBuildObjects < ActiveRecord::Migration
  def change
    create_table :build_objects do |t|
      t.integer :type_object_id

      t.timestamps
    end
  end
end
