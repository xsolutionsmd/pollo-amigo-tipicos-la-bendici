# Pollo Amigo – Típicos la Bendición

Original Vite/vanilla static frontend for the restaurant at 714 York Rd, Towson. Three separate pages: Home `/`, complete Menu `/menu/`, Visit `/visit/`. Main action opens the verified DoorDash storefront; Uber Eats, phone, directions and Facebook remain external destinations. No custom ordering, payment, reservation or contact backend.

The menu has all 40 accepted live-platform entries in six text-only categories. It omits in-store prices, six dated print supplements, unsupported AI descriptions and invented business history. The normal main/Abdul presentation remains text-only; the later Derek-only item-photo variation is not part of this reconstruction.

## Develop and check

Requires the Node version in `app/package.json`. From `app/`:

```powershell
npm ci --no-audit --no-fund
npm run dev -- --config ../runtime/vite.config.mjs --host 127.0.0.1 --port 8787
npm run check
```

`npm run check` builds all three physical HTML entry points and checks the meaningful links in `app/xs-check.json`, noindex metadata, prohibited claims and external runtime resources. There are no third-party runtime resources: fonts and selected optimized images are local. `app/vite.config.js` declares the production page entries. Content is authored directly in the HTML files, shared styles in `app/src/styles.css`, navigation behavior in `app/src/main.js`.

The existing Dockerfile, runtime, Compose and lifecycle contracts are preserved. Use [WORKFLOW.md](WORKFLOW.md) and [validation](docs/VALIDATION.md) for environment-specific operations. Development uses Derek's `derek-dev`; this reconstruction does not push, publish, merge or authorize the later stages.

## Design and evidence

[Blueprint](kb/template-blueprint.md), [accepted brief](kb/design-brief.md), [facts and sources](kb/INDEX.md), [media provenance](kb/media.md). The El Pastor reference supplies hierarchy, proportions and interactions; this is original implementation code with the actual company's content and images. Barlow Condensed 600 and Source Code Pro are self-hosted from Google Fonts; their SIL Open Font Licenses are included in `app/public/fonts/`.

REA's permitted helper launch was rejected by automatic execution review (`rejected: blocked by policy`). No REA capture or evidence ID is claimed. The runnable reconstruction uses accepted reference screenshots plus actual T3 browser inspection. The coordinator must assess this explicit analysis gap before accepting the stage.

Eight original assets are selected through the asset tool, with responsive WebP derivatives for the three broad photos. Raw originals stay private. `private/runs/template-analysis/used-assets.json` in the company workspace records full original/output SHA-256 values, dimensions and paths; the public [media report](kb/media.md) records source provenance.

## Current boundary

This is a local reconstruction deliverable awaiting coordinator acceptance, Astra's static/integration checks and refinement. Hosted verification, image health/revision in Nginx, external checkout and live social-card rendering are not claimed by this stage. See [validation](docs/VALIDATION.md) for actual checks and remaining gaps.
