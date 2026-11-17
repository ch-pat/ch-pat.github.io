# Modern portfolio redesign

## What changed

The Hugo one-page portfolio has been rebuilt as a responsive Astro site with a quieter visual system: warm off-white backgrounds, deep green accents, clear typography, generous spacing, and simple project and experience layouts. The page combines the original portfolio with concise details from the current CV: recent project impact, a fuller technology stack, LinkedIn, and the La Sapienza degree earned in 2020. It removes the old Bootstrap, icon-font, and remote-font dependencies from the homepage.

The visual hierarchy starts with a concise introduction and clear contact path, then moves through an about section, chronological experience, selected projects, education, and contact details. Skill percentages were replaced with straightforward labels; numeric ratings suggested a level of precision that the source content did not explain. The private xForm / DriveManager project is identified as private rather than presented as a public link.

## Why Astro

Astro 7 is a good fit for a personal portfolio that is mostly content and does not need a client-side application runtime. It generates static HTML, works with GitHub Pages, and leaves room to add interactive features later without shipping a large JavaScript bundle by default. It also lets the content remain easy to edit alongside the page.

## Design and performance choices

- The layout uses responsive CSS Grid and Flexbox, with breakpoints for smaller screens.
- A locally hosted Inter font avoids a third-party font request.
- The page uses no animation libraries or client-side framework code. Only small hover and focus transitions are used, and reduced-motion preferences are respected.
- The `.nojekyll` file is copied into the build so GitHub Pages serves Astro’s `_astro/` assets instead of filtering the underscore-prefixed directory.
- Semantic sections, a skip link, visible keyboard focus, descriptive page metadata, and accessible navigation support usability beyond the visual design.
- Content is rendered at build time, so the page remains readable without JavaScript.

## Local preview

Run `npm run dev` and open the local URL printed by Astro. Run `npm run build` to generate the static site in `dist/`, then `npm run preview` to inspect the production build.

The project requires Node.js 22.23.4 or newer and npm 9.6.5 or newer.
