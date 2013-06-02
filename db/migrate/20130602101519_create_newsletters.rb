class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.integer :person_id
      t.integer :subscription_id
      t.boolean :bookmarked

      t.timestamps
    end
  end
end
