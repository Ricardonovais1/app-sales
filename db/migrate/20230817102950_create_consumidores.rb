class CreateConsumidores < ActiveRecord::Migration[7.0]
  def change
    create_table :consumidores do |t|
      t.string :nome
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
