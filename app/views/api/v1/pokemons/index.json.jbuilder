json.array! @pokemons do |pokemon|
  json.extract! pokemon,
    :id,
    :po_id,
    :name,
    :type_1,
    :type_2,
    :total,
    :hp,
    :attack,
    :defense,
    :sp_atk,
    :sp_def,
    :speed,
    :generation,
    :legendary,
    :legendary
end
