class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :nick_name
      t.string :last_name
      t.string :cpf
      t.string :email
      t.timestamps
    end
  end
end
