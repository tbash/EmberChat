require 'spec_helper'

describe User do
    it "should have a factory" do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    context "validations" do
      # shoulda-mathchers not working right now, so eff it
      # it { should validate_uniqueness_of(:name) }
      # it { should validate_uniqueness_of(:email) }
      # it { should validate_presence_of(:name) }
      # it { should validate_presence_of(:email) }
      # it { should_not allow_value("First Last").for(:name) }
    end
end
