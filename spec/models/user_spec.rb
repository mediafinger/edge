require 'spec_helper'
# require 'cancan/matchers'

describe User do
  context 'validations' do
    it { should validate_presence_of(:email)    }
    it { should validate_presence_of(:password) }
  end

  it "should have the given email address" do
    user = Fabricate(:user, :email => 'andy@example.com')
    user.email.should == "andy@example.com"
  end

  context ".profile" do
    it "should create a profile for a new user" do
      user = User.create(:email => "a@be.ce", :password => "foobar")
      user.profile.should_not be_blank
    end
  end

  context ".fill_profile" do
    it "should create a profile for a new user" do
      user = User.new
      user.profile.should be_blank
      user.fill_profile({})
      user.profile.should_not be_blank
    end
  end
end

# describe "Testing access on user model" do
#   before(:each) do
#     @user = Fabricate(:user)
#     @ability = Ability.new(@user)
#   end

#   it "should be able to access own data" do
#     @ability.should be_able_to(:update, @user)
#   end
#   it "should not be able to access other users data" do
#     @ability.should_not be_able_to(:update, Factory(:user))
#   end
# end
