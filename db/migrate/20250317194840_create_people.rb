class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :nombre
      t.integer :documento
      t.boolean :estado

      t.timestamps
    end
  end
end
