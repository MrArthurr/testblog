require 'rails_helper'
RSpec.describe Post, type: :model do
  describe 'attributes' do
    it { expect(subject.attributes).to include('title', 'content')}
  end

  describe 'validates' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:content)}
    it {should validate_presence_of(:author_id)}
    it {should validate_length_of(:content)}
    it {should validate_length_of(:title)}
  end

  describe 'scopes' do
  let(:post1) {Post.create( created_at: '2018-07-11 14:08:05')}
    it {expect(Post.old).not_to include(post1)}
  end

  describe 'ralations' do
    it {should have_many(:comments)}
    it {should belong_to(:author)}
  end
end
