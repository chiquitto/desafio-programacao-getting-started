class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.string :nome_do_comprador
      t.float :valor_do_item
      t.integer :quantidade
      t.string :descricao_do_item
      t.string :nome_do_vendedor
      t.string :endereco_do_vendedor

      t.timestamps null: false
    end
  end
end
