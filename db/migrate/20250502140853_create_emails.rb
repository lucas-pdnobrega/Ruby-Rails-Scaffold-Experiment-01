class CreateEmails < ActiveRecord::Migration[8.0]
  def change
    create_table :emails do |t|
      t.string :endereco
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
