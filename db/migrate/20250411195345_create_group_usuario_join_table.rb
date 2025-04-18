class CreateGroupUsuarioJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :grupos, :usuarios do |t|
      t.index :grupo_id
      t.index :usuario_id

  end
end
