United_States = {
	'California' => ['Los Angeles', 'San Diego', 'San Francisco'],
	'New York' => ['Albany', 'Buffalo', 'New York City'],
	'New Jersey' => ['Jersey City', 'Secaucus', 'Trenton']
}

United_States['California'].insert(1,'Sacramento')
puts United_States

United_States['Texas'] = ['Dallas','San Antonio']
puts United_States

United_States['New York'].pop(2)
puts United_States

United_States['New York'].push('New York City')
puts United_States

United_States['New Jersey'][1] = "Newark"
puts United_States

puts United_States['New Jersey'][2]