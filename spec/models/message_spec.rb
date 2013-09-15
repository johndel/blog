require 'spec_helper'

describe Message do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
  it { should_not allow_value('random1234!#').for(:email) }
  it { should allow_value('test@est.gr').for(:email) }
end
