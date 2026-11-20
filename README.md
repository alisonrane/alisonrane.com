# alisonrane.com

Personal site built with [Astro](https://astro.build), deployed on Netlify (`netlify.toml`).

```bash
npm install
npm run dev        # local preview at http://localhost:4321
npm run build      # static output in dist/
```

- **Homepage content:** `src/pages/index.astro` (toolkit and speaking lists are at the top of the file).
- **Resume:** edit `../resume/resume.md`, run `../resume/build.sh`, then `npm run sync-resume` here and commit.
- **Contact form:** Netlify Forms (`name="contact"`). Submissions appear in the Netlify dashboard under Forms.
- **Social preview image:** `public/og.png`, generated from `scripts/og.typ`.
