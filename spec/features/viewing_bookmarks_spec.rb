require 'pg'

feature 'viewing bookmarks' do
    scenario 'user can see bookmarks' do
        connection = PG.connect(dbname: 'bookmark_manager_test')

        connection.exec("INSERT INTO bookmarks VALUES (1, 'https://www.facebook.com');")
        
        visit('/bookmarks')
        expect(page).to have_content('https://www.facebook.com')
    end
end