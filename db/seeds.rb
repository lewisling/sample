# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Category.destroy_all
["C35 PAV", "C52 In-Car", "C36 Docking", "C40 Clock", "E56 DV", "C77 HMP",
  "D75 Tablet", "C54 Micro"].each do |name|
  Category.create(:name => name)
end

SwClass.destroy_all
["A", "B", "C"].each do |name|
  SwClass.create(:level => name)
end

Swa.destroy_all
["Terence", "SUN Li", "Bret", "Norman", "Lewis", "Ricky", "Simon",
  "Sanjay"].each do |name|
  Swa.create(:name => name)
end

Spl.destroy_all
["Ronald", "Jacky", "Elong", "John", "Johnson", "Simon", "Ricky",
  "YuDong", "Tony"].each do |name|
  Spl.create(:name => name)
end

Supplier.destroy_all
["KH", "TeamForce", "ForYou", "TCL", "Neon", "Yusan", "Arts", "ASD", "Chicony",
  "Computime", "Vtrek"].each do |name|
  Supplier.create(:name => name)
end

ReviewPurpose.destroy_all
["Pre-Milstone", "Post-Milestone"].each do |purpose|
  ReviewPurpose.create(:purpose => purpose)
end

ReviewResult.destroy_all
["Pass", "Not Pass"].each do |result|
  ReviewResult.create(:conclusion => result)
end

Milestone.destroy_all
["PD", "VPD", "AA", "PPC", "PV", "CR"].each do |name|
  Milestone.create(:name => name)
end
