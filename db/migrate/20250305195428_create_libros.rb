class CreateLibros < ActiveRecord::Migration[8.0]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :autor
      t.string :genero

      t.timestamps
    end
  end
end
