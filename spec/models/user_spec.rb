require 'rails_helper'

describe User do
  describe '#create' do

    it "正しく通過すること" do
      user = build(:user)
      expect(user.valid?).to be_truthy
    end

    it "名前が空欄でエラーになること" do
      user = build(:user,name:"")
      expect(user.valid?).to be_falsey
    end

    it "名前が重複ででエラーになること" do
      create(:user,slack: "a",email:"a@gmail.com")
      user = build(:user)
      expect(user.valid?).to be_falsey
    end


    it "slackが重複ででエラーになること" do
      create(:user,name: "じろう",email:"a@gmail.com")
      user = build(:user)
      expect(user.valid?).to be_falsey
    end

    it "slackが空欄でエラーになること" do
      user = build(:user,slack:"")
      expect(user.valid?).to be_falsey
    end

    it "emailが重複ででエラーになること" do
      create(:user,name: "じろう",slack:"jiro")
      user = build(:user)
      expect(user.valid?).to be_falsey
    end

    it "emailが空欄でエラーになること" do
      user = build(:user,email:"")
      expect(user.valid?).to be_falsey
    end

    it "emailが不正でエラーになること1" do
      user = build(:user,email:"examplgmail.com")
      expect(user.valid?).to be_falsey
    end

    it "emailが不正でエラーになること2" do
      user = build(:user,email:"exampl@")
      expect(user.valid?).to be_falsey
    end

    it "pwが7文字以下でエラー" do
      user = build(:user,password:"000aaaa")
      expect(user.valid?).to be_falsey
    end

    it "pwが全て数字でエラー" do
      user = build(:user,password:"00000000")
      expect(user.valid?).to be_falsey
    end

    it "pwが全て英字でエラー" do
      user = build(:user,password:"aaaaaaaa")
      expect(user.valid?).to be_falsey
    end

    it "pwが全て全角でエラー" do
      user = build(:user,password:"ああああああああああ")
      expect(user.valid?).to be_falsey
    end

    it "periodが空欄でエラー" do
      user = build(:user,period:"")
      expect(user.valid?).to be_falsey
    end

    it "styleが０でエラー" do
      user = build(:user,style:0)
      expect(user.valid?).to be_falsey
    end

    it "team_idが空欄でエラー" do
      user = build(:user,team_id:"")
      expect(user.valid?).to be_falsey
    end
  end
end


