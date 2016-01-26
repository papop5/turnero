class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.references :usuario_ingreso, index: true #agregamos references y , index: true
      t.references :usuario_atencion, index: true #agregamos references y , index: true
      t.references :agencia, index: true
      t.string :nombres
      t.string :asunto
      t.text :descripcion
      t.datetime :hora_ingreso
      t.datetime :hora_atencion
      t.datetime :hora_finalizacion
      t.string :comentario
      t.integer :estado, default: 0 #agregamos  default: 0

      t.timestamps null: false
    end
  end
end
