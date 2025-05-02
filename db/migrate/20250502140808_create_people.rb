class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :abreviacao
      t.date :nascimento

      t.timestamps
    end
  end
end
