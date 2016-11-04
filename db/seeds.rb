# Create admin user (just a user)

password = ENV['USER_PASSWORD'] || 'defaultPassword312'
email    = ENV['USER_EMAIL'] || 'admin@mail.com'

puts 'Seeding admin user...'.colorize(color: :yellow)

User.create({
  email: email,
  password: password,
  password_confirmation: password
})

puts 'User seeded successfully!'.colorize(color: :green)
