# Bookmark Manager

## User Stories

The website will have the following specification:

- Show a list of bookmarks
  As a user,
  so I can choose what to read,
  I would like to see a list of what I've bookmarked

| Objects  | Messages |
| -------- | -------- |
| Bookmark | read     |

- Add new bookmarks
  As a user,
  so I can go back to a website,
  I would like to add a bookmark.

| Objects  | Messages |
| -------- | -------- |
| Bookmark | add      |

## How to set up project

### Initial setup

First, clone this repository and cd into it.

```
git clone git@github.com:pzrsa/bookmark-manager.git
cd bookmark-manager
```

Run bundle to install dependencies.

```
bundle
```

### Database setup

Connect to `psql` and create the production and testing databases.

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

Then create the tables by running the SQL scripts in `db/migrations`.
