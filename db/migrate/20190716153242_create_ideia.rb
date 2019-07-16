class CreateIdeia < ActiveRecord::Migration[6.0]
  def change
    create_table :ideia do |t|
      t.string :name

      t.timestamps
    end
  end
end
