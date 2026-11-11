-- Dedicated AINFO technology editorial schema; does not modify legacy tables.
CREATE TABLE IF NOT EXISTS tech_articles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slug TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  category TEXT NOT NULL,
  body_html TEXT NOT NULL,
  image_key TEXT,
  image_alt TEXT,
  author TEXT NOT NULL DEFAULT 'AINFO Editorial',
  status TEXT NOT NULL DEFAULT 'draft' CHECK(status IN ('draft','published','archived')),
  published_at TEXT,
  updated_at TEXT NOT NULL DEFAULT (datetime('now')),
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_tech_articles_status_date ON tech_articles(status,published_at DESC);
CREATE INDEX IF NOT EXISTS idx_tech_articles_category ON tech_articles(category,status);
