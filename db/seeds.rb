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

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Shirt", value: 15, company_id: 2, dev_id: 1)
Freebie.create(item_name: "Coozie", value: 10, company_id: 1, dev_id: 3)
Freebie.create(item_name: "Key Chain", value: 5, company_id: 3, dev_id: 4)
Freebie.create(item_name: "Note Pad", value: 5, company_id: 1, dev_id: 2)
Freebie.create(item_name: "Mug", value: 20, company_id: 4, dev_id: 2)

puts "Seeding done!"
