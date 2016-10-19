require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    subject { build_stubbed(:post) }

    it { is_expected.to be_valid }

    it 'validates the title' do
      subject.title = ''
      expect(subject).not_to be_valid
    end

    it 'validates the content' do
      subject.content = ''
      expect(subject).not_to be_valid
    end
  end
end
