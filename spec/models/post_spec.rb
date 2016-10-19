require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { expect(build_stubbed(:post)).to be_valid }
    it { expect(build_stubbed(:post, title: '')).not_to be_valid }
    it { expect(build_stubbed(:post, content: '')).not_to be_valid }
  end
end
