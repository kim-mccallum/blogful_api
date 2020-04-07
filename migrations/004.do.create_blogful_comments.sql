CREATE TABLE blogful_comments (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, 
    text TEXT NOT NULL, 
    date_commented TIMESTAMPTZ DEFAULT now() NOT NULL, 
    article_id INTEGER
        REFERENCES blogful_articles(id) ON DELETE CASCADE NOT NULL,
    user_id INTEGER
        REFERENCES blogful_users(id) ON DELETE CASCADE NOT NULL
);