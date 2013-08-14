class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :twitter

      t.timestamps
    end
  end
end
