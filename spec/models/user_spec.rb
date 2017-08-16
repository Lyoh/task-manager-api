require 'rails_helper'

RSpec.describe User, type: :model do
  # example 1
  # before { @user = FactoryGirl.build(:user) }

  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  # example 2
  # subject { build(:user) }

  # it { expect(subject).to respond_to(:email) }
  # it { expect(subject).to be_valid }

  # example 3
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:name) }
end
