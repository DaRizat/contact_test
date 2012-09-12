# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Building.destroy_all
Site.destroy_all
Contact.destroy_all
Company.destroy_all
Project.destroy_all
ContactAssociation.destroy_all

building = Building.create({ name: 'The Building' })

jack = Contact.create({ name: 'Jack',
                        phone_number: '555-5555'})

nate = Contact.create({ name: 'Nate',
                        phone_number: '555-1234'})

chris = Contact.create({ name: 'Chris',
                        phone_number: '555-1212'})

building.owner = ContactAssociation.create({ contact_id: nate.id,
                                             associatable_id: building.id,
                                             associatable_type: 'building'})

building.manager = ContactAssociation.create({ contact_id: jack.id,
                                               associatable_type: building.id,
                                               associatable_type: 'building'})
building.save

company_a = Company.create({ name: 'Company A'})
company_a.contacts =  [jack, nate]
company_a.save

company_b = Company.create({ name: 'Company B',
                             contacts: [chris]})
company_b.contacts = [chris]
company_b.save

project = Project.create({ name: 'Project X' })
project.building = building
project.primary_contact = ContactAssociation.create({ contact_id: chris.id,
                                                      associatable_id: project.id,
                                                      associatable_type: "project"})
project.save

site = Site.create({ name: 'Da Sizzite',
                     unit: '305'})
site.building = building
site.primary_contact = ContactAssociation.create({contact_id: nate.id,
                                                  associatable_id: site.id,
                                                  associatable_type: "site"})
site.save
