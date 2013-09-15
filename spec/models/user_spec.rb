require 'spec_helper'

describe User do
  it { should have_many(:posts) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_uniqueness_of(:email) }
end
