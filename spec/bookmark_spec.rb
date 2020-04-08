require 'bookmark'
require 'pg'

describe Bookmark do
  let(:bookmarks) { Bookmark.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      # fill test database with test data
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      expect(Bookmark.all).to include "http://www.twitter.com"
      expect(Bookmark.all).to include "http://www.destroyallsoftware.com"
      expect(Bookmark.all).to include "http://www.google.com"
    end
  end
end
