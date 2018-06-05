require 'pg'

feature 'adding a new bookmark' do
    scenario 'user can input a url and title' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
    end
end