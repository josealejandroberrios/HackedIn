# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


roles = Role.create([
  {name: "ADMINISTRADOR"},
  {name: "USUARIO"}
])

users = User.create([
  {name: "admin", lastname: "1", email: "admin@admin.com", password: "123456", password_confirmation: "123456", role_id: 1},
  {name: "jose", lastname: "berrios", email: "jose@berrios.com", password: "012345", password_confirmation: "012345", role_id: 2},
])

