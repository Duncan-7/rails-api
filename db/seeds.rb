require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'testdata.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv

CSV.foreach(Rails.root.join('lib', 'seeds', 'testdata.csv'), :headers => true) do |row|
  Customer.create!(row.to_hash)
end