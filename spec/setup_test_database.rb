require 'pg'

def setup_test_database
  # Connecting to test database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  puts "Clearing test table"
  # Clear the bookmarks table
  connection.exec('TRUNCATE bookmarks;')
end
