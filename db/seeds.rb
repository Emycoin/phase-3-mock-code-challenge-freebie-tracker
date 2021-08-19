puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
id = Dev.first.id
company_id = Company.first.id
Freebie.create(item_name: "spooon", company_id: company_id, dev_id: id, value: 100)
Freebie.create(item_name: "knife", company_id: company_id, dev_id: id, value: 10)
id = Dev.second.id
company_id = Company.second.id
Freebie.create(item_name: "fork", company_id: company_id, dev_id: id, value: 3)
Freebie.create(item_name: "bowl", company_id: company_id, dev_id: id, value: 98)
id =Dev.third.id
company_id = Company.third.id

Freebie.create(item_name: "wood", company_id: 1, dev_id: id, value: 4)
Freebie.create(item_name: "toy", company_id: 1, dev_id: id, value: 7)

 

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
