class CreateFichas < ActiveRecord::Migration[8.0]
  def change
    create_table :fichas do |t|
      t.string :programa

      t.timestamps
    end
  end
end
