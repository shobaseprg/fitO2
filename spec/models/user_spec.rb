require 'rails_helper'

describe User do
  describe '#create' do

    it "すべて入力済で登録できること" do
      user = build(:user)
      expect(user.valid?).to be_truthy
    end
  end
end
      