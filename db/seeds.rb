require 'csv'

Pokemon.destroy_all if Rails.env.development?

csv_filepath = File.join(__dir__, 'pokemon.csv')

CSV.foreach(csv_filepath, headers: :first_row, header_converters: :symbol) do |row|
  row[:po_id] = row[:po_id].to_i
  row[:total] = row[:total].to_i
  row[:hp] = row[:hp].to_i
  row[:attack] = row[:attack].to_i
  row[:defense] = row[:defense].to_i
  row[:sp_atk] = row[:sp_atk].to_i
  row[:sp_def] = row[:sp_def].to_i
  row[:speed] = row[:speed].to_i
  row[:generation] = row[:generation].to_i
  row[:legendary] = row[:legendary] == 'True' || row[:legendary] == 'true'

  pokemon = Pokemon.create!(row)
  puts "Pokemon with ID #{pokemon.id} was created"
end

puts "All done!"
