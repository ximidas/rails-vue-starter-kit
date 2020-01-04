# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ email: 'admin@test.com', password_digest: '$2a$12$keNVoKoKBLpSFJEituf9Leq3pOaW6hN2wum5ozuRtRSlZna2Uidwq', role: 1 }]) #password: 12345
User.create([{ email: 'user@test.com', password_digest: '$2a$12$keNVoKoKBLpSFJEituf9Leq3pOaW6hN2wum5ozuRtRSlZna2Uidwq', role: 2 }])
