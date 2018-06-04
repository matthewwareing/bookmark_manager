require 'bookmark'

describe Bookmark do
    subject(:bookmark) { described_class }
    describe '#list' do
        it 'returns bookmarks' do
            connection = PG.connect(dbname: 'bookmark_manager_test')

            connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.facebook.com');")
            values = ["https://www.facebook.com"]
            expect(bookmark.all).to eq values
        end
    end
end