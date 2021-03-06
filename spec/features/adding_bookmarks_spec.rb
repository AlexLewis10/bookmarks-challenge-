feature 'Adding Bookmarks' do
  scenario 'user adds https://github.com' do
    visit('bookmarks/new')
    fill_in('url', with: 'https://github.com')
    click_button('Submit')

    expect(page).to have_content 'https://github.com'
  end

  scenario 'user adds https://www.youtube.com/' do
    visit('bookmarks/new')
    fill_in('url', with: 'https://www.youtube.com/')
    click_button('Submit')

    expect(page).to have_content 'https://www.youtube.com/'
  end


  scenario 'user adds https://www.youtube.com/, and wants to see all of the bookmarks' do
    #  prepare test db
    Bookmark.create('http://www.twitter.com')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com')

    visit('bookmarks/new')
    fill_in('url', with: 'https://www.youtube.com/')
    click_button('Submit')

    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content 'https://www.youtube.com/'
  end
end
