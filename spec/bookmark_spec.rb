require 'bookmark'

describe Bookmark do
    subject(:bookmark) { described_class }
    describe '#list' do
        it 'returns bookmarks' do
            expect(bookmark.all).to include("https://www.ft.com")
        end
    end
end