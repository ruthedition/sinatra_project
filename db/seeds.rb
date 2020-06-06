ISO3166::Country.all.each do |country|
  Country.create(name: country.name)
end 

