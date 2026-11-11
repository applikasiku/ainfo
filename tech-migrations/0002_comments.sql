CREATE TABLE IF NOT EXISTS tech_comments (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 article_slug TEXT NOT NULL,
 parent_id INTEGER,
 name TEXT NOT NULL,
 body TEXT NOT NULL,
 status TEXT NOT NULL DEFAULT 'pending' CHECK(status IN ('pending','approved','rejected')),
 created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_tech_comments_article_status ON tech_comments(article_slug,status,created_at);
CREATE INDEX IF NOT EXISTS idx_tech_comments_parent ON tech_comments(parent_id);
