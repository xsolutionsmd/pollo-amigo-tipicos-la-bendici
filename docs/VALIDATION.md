# Initial frontend reconstruction validation

October 18, 2026; Sol High, company `derek-dev`, base `250bf07ca1aaab36986b87a1a8cc15dd9b376999`. Reconstruction only, pending coordinator acceptance. No push or deployment. Existing runtime/Dockerfile unchanged.

## Completed checks

- `npm ci --no-audit --no-fund`; `npm run check`: Vite production build and existing static suite pass. Three physical outputs: `dist/index.html`, `dist/menu/index.html`, `dist/visit/index.html`. Required links include every real integration plus the three routes. No placeholder marker, external runtime resource, decorative numbering or fake form.
- Actual owned T3 browser: direct loads at 1440×900, 390×844 and 375×844 for all three pages. No horizontal overflow or out-of-viewport headings/controls; both licensed fonts load. Inspected real food/logo/storefront/interior images and lower-page content. Home preserves the full chicken plate; mobile stacks its photo/title. Visit retains both signs and entry; real dining room is shown without implying a larger restaurant.
- Six menu categories: pointer open, Enter close, Space reopen pass for each. All 40 actual browser DOM names/categories/descriptions reconciled to the complete accepted source index: **3 / 6 / 3 / 9 / 7 / 12**. Zero prices and zero item-row photos. Six dated supplements absent; Salmon and Fresh Salmon Filet preserved separately. Pupusa description safely shortened to handmade; unsupported Empanadas filling omitted. Private JSON and derived CSV carry rendered reconciliation without changing source/photo evidence.
- Full-screen navigation: open/close, repeated opening, initial focus, twelve forward Tab steps, reverse Tab, Escape, focus return, scroll lock/unlock and real navigation to Visit. An observed native dialog focus-wrap issue was fixed with an explicit boundary trap. Visit refresh and browser Back work; navigating through the dialog closes it before leaving, so returning does not preserve a locked overlay.
- Reduced motion: T3 exposes no OS reduced-motion emulation. Activated the **existing** CSS media rule in the browser engine, verified both chevron and link transitions compute to `0s`, then restored the rule. No automatic or continuing decorative motion exists. This is declaration/runtime verification, not a claim that an OS preference was changed.
- Primary Order online was clicked: browser reached the exact verified DoorDash URL and restaurant-specific page title, then Back returned to the site. Alternate Uber Eats, telephone, Maps and Facebook hrefs exactly match the accepted KB; no order, phone call, payment or message submitted.
- Local HTTP `/`, `/menu/`, `/visit/`, `/health`, `/version.json` and referenced assets checked. Health `ok`, noindex and working-copy revision are from the preserved development runtime. All 34 original asset hashes verify; eight selected assets and eleven optimized WebP files remain provenance-linked.

## Evidence

The private company workspace has `private/runs/template-analysis/`: six page screenshots at desktop/390; menu-open and navigation captures; lower home content; `browser-menu.json`, `final-browser-checks.json`, `reconciliation.json`, `used-assets.json` and `local-http-checks.json`. The earlier `browser-checks.json` records pre-repair checks and is superseded by `final-browser-checks.json`. Reference selection has seven coordinator captures; [blueprint](../kb/template-blueprint.md) records measurements and adaptations. Raw media and browser tooling are excluded from the public repository/image.

## Remaining limits and next owner

**Method: accepted browser/devtools fallback; historical REA tool limitation.** Automatic execution review rejected the dedicated REA helper launch before execution (`rejected: blocked by policy`, no further reason). The attempt was stopped and not retried; no CDP endpoint, REA target/capture or evidence ID exists, and `rea-blocker.json` retains the record. Under Derek's October 18, 2026 correction, REA is preferred tooling rather than an acceptance gate, so this is not a remaining blocker. Ordinary T3 browser evidence is not presented as REA evidence.

No production Nginx container, hosted preview, remote repository, social-card fetch or external transaction was tested here. Astra owns runtime/integration acceptance after coordinator acceptance, then the refinement specialist reviews this same populated frontend. The public source is noindex. Current in-store prices, holiday exceptions, operator identity, salmon equivalence and 13 exact dish-photo gaps remain unknown and are not invented.

Local Vite at `http://127.0.0.1:8787/`, its installed dependencies and current ignored `app/dist/` are retained only for imminent Astra/refinement checks. Recheck and retire them when those local reviews finish. No Docker resource was created or removed. The rejected REA launch created no browser/profile/helper session. Existing raw library and the new evidence/generator records are required reconstruction/provenance records. Recycled the unused 229-byte starter favicon after checking it was unreferenced; verified its exact Recycle Bin entry and SHA-256. Zero disk-space recovery is claimed. Sibling processes and designated VoiceVault/Budgie resources were untouched.

# Frontend refinement validation

October 18, 2026; Claude Opus 5.5 High refinement of the same accepted frontend (base `e97966331c0f9ff30555451ffbaf5cbbc57b03e5`). Changed only `app/src/styles.css`; markup, content, menu data, media and integrations unchanged. No push, Docker or deployment.

## Changes and reasons

- Hero and pupusa photo fields now use `#fe8931`, the measured mean border color of the actual orange-background photographs, instead of a lighter flat orange. Desktop/mobile photo edges fade over 5% (pupusa 7%), stopping before the plates. The visible rectangular seam around the hero photo and the letterbox bands in the pupusa split are gone; full plates, both pupusas, curtido and sauce remain opaque and uncropped.
- Header follows the reference at every width: round logo, Order online and full-screen navigation. The duplicate inline Home/Menu/Visit links are hidden whenever the script-enabled menu button is present; they remain the no-script fallback.
- Visit desktop hero matches the Menu page height (650px, focus 50% 40%), so the overlapping Visit us title panel sits in the first 1440×900 viewport (title bottom 854px, previously below the fold). Both signs, window graphics and entry door stay visible. The dining-room photo aligns to the content edge.
- Restrained motion: menu category content fades/slides 6px in over 0.24s when opened; the navigation layer fades in over 0.2s. The existing reduced-motion rule disables both (`animation: none !important`).

## Checks on final source

- `npm run check`: build and static suite pass (20 built files); built CSS retains the refinement rules.
- Owned T3 tab, Vite `http://127.0.0.1:8787/`: rendered 1440×900 Home/Visit/pupusa split and 390×844 Home inspected. No horizontal overflow and zero broken images on all three pages at 1440, 1100, 800 and 390. Inline nav hidden and menu button present at every width.
- 375×812: navigation opened/closed three times (Close focused, `aria-expanded` true/false, scroll lock/unlock, focus returned). Real Shift+Tab from Close wraps to the phone link; Tab wraps back to Close with visible focus; real Escape closes it and returns focus to the menu button. Dialog Menu link reached `/menu/`; Back returned to `/`; Visit direct load and refresh passed with the correct `aria-current`.
- Menu: keyboard Enter opened Chef Specials with the disclose animation. All six open: 40 entries, 3/6/3/9/7/12, zero item photos, zero prices, no headings/descriptions/chevrons outside their category borders, page width 375.
- Reduced motion verified from the active rule in the stylesheet; T3 cannot emulate the OS preference.

Evidence: private `runs/refine-r1/` captures and `runs/refine-r1.md`.
