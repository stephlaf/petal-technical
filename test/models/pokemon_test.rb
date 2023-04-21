require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  test "Creating a Pokemon without a name should not save to the DB" do
    pokemon = Pokemon.new()
    assert_not pokemon.save
  end

  test "A Pokemon name should be unique" do
    Pokemon.create!(name: 'Escargot', legendary: true)
    invalid_pokemon = Pokemon.new(name: 'Escargot', legendary: true)
    assert_not invalid_pokemon.save
  end

  test "A Pokemon name should be at least 3 characters long" do
    pokemon = Pokemon.new(name: 'Bo', legendary: false)
    assert_not pokemon.save, "The name #{pokemon.name} is too short, it should be at least 3 characters long"
  end
end
