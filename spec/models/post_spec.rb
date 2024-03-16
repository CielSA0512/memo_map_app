require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe 'スポット新規投稿' do
    context 'スポット投稿ができる' do
      it '正常に投稿ができる' do
        expect(@post).to be_valid
      end
      it 'imageが空でも投稿ができる' do
        @post.image = nil
        expect(@post).to be_valid
      end
    end
    context 'スポット投稿ができない' do
      it 'addressが空では保存できない' do
        @post.address = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Address can't be blank")
      end
      it 'addressを入力しても緯度と経度が算出できなければ保存できない' do
        @post.address = 'と'
        @post.valid?
        expect(@post.errors.full_messages).to include('Address could not be geocoded')
      end
      it 'commentが空では保存できない' do
        @post.comment = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Comment can't be blank")
      end
      it 'userが紐づいていないと保存できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
