class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :person
      t.string :status

      t.timestamps
    end
    add_index :tweets, :person_id
  end
end
