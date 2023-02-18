class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :to, null: false
      t.string :from, null: false
      t.string :subject, null: false
      t.text :body, null: false
      t.datetime :sent_at, null: false

      t.timestamps
    end
  end
end
