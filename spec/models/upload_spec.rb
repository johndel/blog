require 'spec_helper'

describe Upload do
  it { should belong_to(:uploadable) }
  it { should allow_value(1).for(:uploadable_id) }
  it { should allow_value("a@b.com").for(:uploadable_type) }
end
