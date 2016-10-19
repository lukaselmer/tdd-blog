require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    let(:valid_post) { Post.new(title: 'My weekend getaway', content: 'I went to Lyon...') }

    it 'validates valid post' do
      expect(valid_post.valid?).to be_truthy
    end

    it 'validates the title' do
      valid_post.title = ''
      expect(valid_post.valid?).to be_falsey
    end

    it 'validates the content' do
      valid_post.content = ''
      expect(valid_post.valid?).to be_falsey
    end
  end
end
