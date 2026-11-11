# AINFO 2.0 — Editorial publishing

The Cloudflare Worker entrypoint is `worker/src/tech.ts`. New articles are registered in `worker/src/published.ts`.

## Publish directly from ChatGPT
Ask ChatGPT to create and publish an AINFO technology article. The connected GitHub integration can update `published.ts` on `main`. Each article requires:
- `slug`: unique lowercase URL-safe identifier
- `cat`: one of the seven existing categories
- `title`, `desc`: unique search-focused title and summary
- `date`: publication date (YYYY-MM-DD)
- `read`: estimated reading time
- `body`: semantic, original HTML article content
- optional `image` and `imageAlt`: licensed or owned thumbnail image URL and alt text
- optional `author`, `updated`

If `image` is absent, the website automatically generates a branded 1200×630 SVG thumbnail at `/thumbnail/{slug}.svg`, used in article cards, article pages and Open Graph previews. This is a designed fallback, not a photograph.

Articles are rendered as HTML at `/read/{slug}/` and automatically included in the sitemap. Publishing requires successful GitHub commit **and** Cloudflare deployment; verify both and check the public URL before claiming publication.

## Editorial quality checks
Verify claims and sources; do not invent hands-on tests, product prices, benchmarks, author credentials, or quotes. Avoid copying copyrighted text. Review factual accuracy, accessibility, thumbnail rights, and search intent. No SEO score guarantees indexing or advertising revenue.

## Operational notes
The previous Cloudflare D1 database is not deleted; its binding was removed from the new Worker configuration. Keep a backup before any destructive operation. The old frontend and backend files remain in Git history and in the repository but are no longer the selected Worker entrypoint. An authenticated browser-based CMS has **not** been implemented; GitHub-based publishing is available through the connected integration.
