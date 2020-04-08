```
As a user,
So I can see all of my bookmarks
I want to be able to see a list of my bookmarks

As a user,
When I find a website that I want to save
I want to add a new bookmark

Aa a user,
When I no longer need a bookmark
I want to be able to delete the bookmark

As a user,
When I need to make a change to a bookmark
I want to be able to update a bookmark

As a user
So that I can better understand bookmarks
I want to be able to Comment on bookmarks

As a user
So that I can see related bookmarks
I want to be able to Tag bookmarks into categories

As a user
So that I can compare related bookmarks
I want to be able to Filter bookmarks by tag

As a maintainer of the system
To protect the privacy of users
I want Users to be restricted to managing only their own bookmarks

```

## Database Setup Instructions

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

## Test Database Setup Instructions

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
