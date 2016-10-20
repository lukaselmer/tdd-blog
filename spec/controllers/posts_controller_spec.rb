require 'rails_helper'

RSpec.describe PostsController do
  describe 'GET #show' do
    it 'returns http success' do
      # stubbed version / unit test:
      # post = build_stubbed(:post)
      # expect(Post).to receive(:find).with(post.id.to_s).and_return(post)

      post = create(:post)
      get :show, id: post.id
      expect(response).to have_http_status(:success)
      expect(assigns(:post)).to eq(post)
    end
  end
end
