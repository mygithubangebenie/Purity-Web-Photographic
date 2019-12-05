1.upto(20) do |i|
  User.create(name: "janvier#{i}",
  email: "janvier@dive.code#{i}",
  address: "kabuga#{i}",
  contact:  "7328738728738#{i}",
  password:   "123456#{i}",
  password_confirmation:  "123456#{i}" )
end