puts 'Creating companies...'
Company.create(name: 'Google', founding_year: 1998)
Company.create(name: 'Facebook', founding_year: 2004)
Company.create(name: 'Dunder Mifflin', founding_year: 2002)
Company.create(name: 'Enron', founding_year: 1995)

puts 'Creating devs...'
Dev.create(name: 'Rick')
Dev.create(name: 'Morty')
Dev.create(name: 'Mr. Meseeks')
Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
id = Dev.first.id
company_id = Company.first.id
Freebie.create(item_name: 'Toy', value: 100, dev_id: id, company_id: company_id)
Freebie.create(item_name: 'Truck', value: 200, dev_id: id, company_id: company_id)
id = Dev.second.id
company_id = Company.first.id
Freebie.create(item_name: 'Toy', value: 100, dev_id: id, company_id: company_id)
Freebie.create(item_name: 'Truck', value: 200, dev_id: id, company_id: company_id)
company_id = Company.second.id
Freebie.create(item_name: 'ZZZ', value: 100, dev_id: id, company_id: company_id)
Freebie.create(item_name: 'TTT', value: 200, dev_id: id, company_id: company_id)

puts 'Seeding done!'
