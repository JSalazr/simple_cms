class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      t.timestamps #same as
      # t.datetime "created_at"
      # t.datetimw "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
