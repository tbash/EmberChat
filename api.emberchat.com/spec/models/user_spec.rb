require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:contact)).to be_valid
  end

  context "validations" do
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
