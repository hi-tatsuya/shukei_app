require 'rails_helper'
RSpec.describe User, type: :model do
  describe "バリデーション" do
    context "データが条件を満たすとき" do
      it "保存できる" do
        user = build(:user)
        expect(user.valid?).to eq true
      end
    end
    context "name が空のとき" do
      it "エラーが発生する" do
      end
    end
    context "nameが30文字以上の時" do
      it "エラーが発生" do
      end
    end
    context "emailが空のとき" do
      it "エラーが発生" do
      end
    end
    context "emailが50文字以上のとき" do
      it "エラーが発生" do
      end
    end
    context "emailがすでにある時" do
      it "エラーが発生" do
      end
    end
    context "emailがアルファベットと英数字のみの時" do
      it "エラーが発生" do
      end
    end
  end
end