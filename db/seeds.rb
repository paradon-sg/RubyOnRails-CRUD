# frozen_string_literal: true

if User.count.zero?
  user = User.create(
    username: 'admin',
    email: 'admin@gmail.com',
    password: 'password'
  )
  user.add_role :admin
end
