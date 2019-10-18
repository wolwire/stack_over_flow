require 'rails_helper'

RSpec.describe Question, type: :model do
  context "validation_test"  do
    before do
      @user = User.create(name: "Mayank", email: "agrawal.mayank@1996mail.com",password: "foobar", password_confirmation: "foobar")
      @user.send("activate")
    end


    it "validates if user_id is not nil" do
      ques=Question.new(content: "a"*5000)
      expect(ques.save).to be false
    end

    it "validates question header presence" do
      ques = @user.questions.create(content: "a"*5000)
      expect(ques.save).to be false
    end

    it "validates question header length" do
      ques = @user.questions.create(header: "a"*400,content: "a"*5000)
      expect(ques.save).to be false
    end

    it "validates question save" do
      ques = @user.questions.create(header: "a"*50,content: "a"*5000)
      expect(ques.save).to be true
    end

    it "validates question delete" do
      ques = @user.questions.create(header: "a"*50,content: "a"*5000)
      ques.save
      expect(ques.dele)

    end


  end
end
