require 'rails_helper'

RSpec.describe 'posts/show', type: :view do
  it 'displays the post' do
    post = build(:post)
    assign(:post, post)

    render

    expect(rendered).to include("<h1>#{post.title}</h1>")
    expect(rendered).to include("<p>#{post.content}</p>")
  end
end
