feature 'viewing bookmarks' do
    scenario 'user can see bookmarks' do
        visit('/bookmarks')
        expect(page).to have_content('https://www.ft.com')
        expect(page).to have_content('https://www.economist.com')
        expect(page).to have_content('https://www.dailystar.com')
    end
end