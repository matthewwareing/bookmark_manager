require 'bookmark'

describe Bookmark do
    subject(:bookmark) { described_class.new }
    describe '#list' do
        it 'returns bookmarks' do
            expect(bookmark.list).to include("https://www.ft.com")
        end
    end
end