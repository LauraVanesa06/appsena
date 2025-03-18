class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :nombre
      t.date :fecha_public
      t.string :genero
      t.integer :duracion

      t.timestamps
    end
  end
end
