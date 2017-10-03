class CreateChuckNorrisFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :chuck_norris_facts do |t|
      t.string :fact

      t.timestamps
    end
  end
end
