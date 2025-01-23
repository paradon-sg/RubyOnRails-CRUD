if User.count.zero?
  User.create(email_address: "admin@bananacoding.com", password: "password",)
end
