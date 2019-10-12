require 'rails_helper'
RSpec.describe User, type: :model do
 context "validation_test"  do

   it "ensures user name" do
    user=User.new(email: "agrawal.mayank1996@gmail.com").save
    expect(user).to eq(false )
   end
   it "ensures user email format" do
     user=User.new(name: "mayank", email: "agrawal.mayank1996mail.com").save
     expect(user).to eq(false )
   end
   it "ensures user save" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com", password: "foobar", password_confirmation: "foobar").save
     expect(user).to eq(true)
   end
   it "checks user name length" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com")
     user.name='a'*52
     expect(user.valid?).to eq(false)
   end
   it "checks user name length" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com")
     user.email='a'*256
     expect(user.valid?).to eq(false)
   end
   it "checks if email is lower case after save " do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com",password: "foobar", password_confirmation: "foobar")
     user.save
     expect(user.email).to eq("agrawal.mayank@1996mail.com")
   end
   it "checks if authenticated function for password" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com",password: "foobar",
                   password_confirmation: "foobar")
     user.save
     expect(user.authenticated?("password","foobar")).to eq(true)
   end
   it "checks if model remembers" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com",password: "foobar",
                   password_confirmation: "foobar")
     user.remember
     expect(!!user.remember_digest).to eq(true)
   end
   it "checks if model remembers" do
     user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com",password: "foobar",
                   password_confirmation: "foobar")
     user.remember
     user.forget
     expect(!!user.remember_digest).to eq(false)
   end

 end
end
