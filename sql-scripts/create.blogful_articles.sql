CREATE TABLE IF NOT EXISTS blogful_articles (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT,
    date_published TIMESTAMPTZ DEFAULT now() NOT NULL
);
DROP TYPE IF EXISTS article_category;
CREATE TYPE article_category AS ENUM (
    'Listicle',
    'How-to',
    'News',
    'Interview',
    'Story'
);

ALTER TABLE blogful_articles
  ADD COLUMN
    style article_category;