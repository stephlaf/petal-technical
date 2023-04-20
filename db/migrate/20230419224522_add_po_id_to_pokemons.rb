class AddPoIdToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :po_id, :integer
  end
end
