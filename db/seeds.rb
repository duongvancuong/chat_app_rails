pass = "123123"
1.upto(5) do |i|
  User.create(
    email: "user-#{i}@example.com",
    password: pass,
    password_confirmation: pass
  )
end
