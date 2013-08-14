class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|
      t.string :twitter

      t.timestamps
    end
  end
end
