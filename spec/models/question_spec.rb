require 'rails_helper'

RSpec.describe Question, type: :model do
  context "validation_test"  do
    let "create user" do
      @user=User.new(name: "Mayank", email: "agRawal.mayank@1996mail.com",password: "foobar", password_confirmation: "foobar")
      @user.activate
    end
    it "validates if user_id is not nil" do
      ques=Question.create(content: "a"*5000)
      expect(ques.save).to be false
    end


  end
end
