require 'rails_helper'

describe Post do
  describe '#create' do

  it "通過すること" do
    create(:lesson)
    post = build(:post)
    expect(post.valid?).to be_truthy
  end

    it "タイトル空欄でエラーすること" do
      post = build(:post, title:"")
      expect(post.valid?).to be_falsey
    end

    it "内容空欄でエラーすること" do
      post = build(:post, content:"")
      expect(post.valid?).to be_falsey
    end

    it "lesson空欄でエラーすること" do
      post = build(:post, lesson_id:"")
      expect(post.valid?).to be_falsey
    end
  end

end