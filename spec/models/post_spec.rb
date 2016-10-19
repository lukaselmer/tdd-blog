require 'rails_helper'

RSpec.describe Post, type: :model do
  def expect_post(attributes = {})
    expect(build_stubbed(:post, attributes))
  end

  describe 'validations' do
    it { expect_post.to be_valid }
    it { expect_post(title: '').not_to be_valid }
    it { expect_post(content: '').not_to be_valid }
  end
end
