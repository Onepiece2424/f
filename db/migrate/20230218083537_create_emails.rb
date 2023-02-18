class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :body
      t.datetime :sent_at

      t.timestamps
    end
  end
end
