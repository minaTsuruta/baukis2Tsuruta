require "rails_helper"

describe Admin::Authenticator do
    describe "#authenticate" do
        example "正しいパスワードならtrueを返す" do
            m = build(:staff_member)
            expect(Admin::Authenticator.new(m).authenticate("pw")).to be_truthy
        end

        example "誤ったパスワードならfalseを返す" do
            m = build(:staff_member)
            expect(Admin::Authenticator.new(m).authenticate("xy")).to be_falsey
        end

        example "パスワード未設定ならfalseを返す" do
            m = build(:staff_member, password: nil)
            expect(Admin::Authenticator.new(m).authenticate("nil")).to be_falsey
        end

        example "停止フラグが立っていてもtueを返す" do
            m = build(:staff_member, suspended: true)
            expect(Admin::Authenticator.new(m).authenticate("pw")).to be_truthy
        end

        example "開始前ならfalseを返す" do
            pending('調査中')
            m = build(:staff_member, start_date: Date.tomorrow)
            expect(Admin::Authenticator.new(m).authenticate("pw")).to be_falsey
        end

        example "終了後ならfalseを返す" do
            pending('調査中')
            m = build(:staff_member, end_date: Date.today)
            expect(Admin::Authenticator.new(m).authenticate("pw")).to be_falsey
        end
    end
end
