feature "see a list of bookmarks" do
  scenario "go to bookmarks parge and see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "bookmarks"
  end

  scenario "can see a url that is a bookmark" do
    # fill test database with test data
    Bookmark.create('http://www.twitter.com')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com')

    visit '/bookmarks'

    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
