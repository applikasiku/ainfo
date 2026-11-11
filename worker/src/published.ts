// Published articles can be added from ChatGPT using the connected GitHub repository.
// Each article must be reviewed for accuracy, original value, and image rights before publishing.
// Keep this array as the single source of truth for newly published editorial articles.
export type PublishedArticle = {
  slug: string;
  cat: string;
  title: string;
  desc: string;
  date: string;
  read: string;
  body: string;
  image?: string;
  imageAlt?: string;
  author?: string;
  updated?: string;
};
export const publishedArticles: PublishedArticle[] = [];
