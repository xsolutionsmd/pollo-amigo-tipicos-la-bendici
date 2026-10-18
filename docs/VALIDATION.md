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


# Accepted live review and final handoff — October 18, 2026

The reconstruction/refinement sections above describe their historical local scope. They are superseded for current release state by the accepted managed deployment and independent live evidence below.

- Independent broad live review: 72 desktop/mobile/interaction cases at `f93b61e`; two routing findings. Astra fixed relative HTTPS-preserving canonical redirects and authored missing-page recovery in PR1, merged as `5b9be3670be8593835b3d82fe9a60cce2ed77449` and synchronized into both previews.
- Fresh independent Sol High recheck: 67 actual pass cases (34 browser, 33 HTTP), zero failed/blocked, zero new findings at `5b9be3670be8593835b3d82fe9a60cce2ed77449`. PA-LR-001 and PA-LR-002 are resolved across all three environments. Includes encoded-query redirects, true404 recovery links, keyboard/mobile navigation, refresh/back, missing assets, noindex, fonts and 40-entry text-only menu reconciliation.
- Final handoff quick pass: existing 34 original hashes and 27 mapped photo identities/provenance checked, 13 exact-photo gaps preserved; live desktop food cards/pupusas and 390px chicken/pupusa crops inspected. No dish correction or product change. All nine source families already have recorded checks; no broad re-research.
- Documentation release: only owned public-safe handoff records are published. The actual application/runtime/Dockerfile/server/deployment/workflow comparison and post-last-push `XV --expect-site` receipts for production, Derek and Abdul are retained privately with actual remote/live SHAs. These receipts supplement public legacy pending flags; no new full-browser-suite pass is inferred from a documentation commit.
- Media delivery: current ZIP persisted after reload and its authenticated download matches the original 14,869,796 bytes and exact SHA-256. Final Slack URLs and canonical directory matching-readback receipt remain private.

Evidence in the private company workspace: `runs/live-review-r1.md`, `runs/fixes-r1/`, `runs/live-recheck-r1.md`/`.json`, `runs/food-identity-final.json`, `runs/media-delivery.json`, `runs/handoff-verification.json` and `runs/slack-site-links.json`.

Limits: responsive Chromium viewports, not physical-device/older-engine coverage. Existing reduced-motion declaration/runtime evidence retained; no new OS emulation or external customer transactions. No sale, owner-approved prices/menu or operator identity is inferred. The required Derek-only menu-photo variation remains a later scoped step after coordinator acceptance; main/Abdul remain text-only. Retain the current builder/cache/check image, dependencies and dist for that immediate work, then recheck exact owned resources. The rejected archive recycling is not retried.

## Derek-only menu-photo addition — October 18, 2026

Normal workflow completed before this scoped addition. Astra added 27 confirmed dish images to Derek's 40-entry menu; 13 entries have no substitute photograph. Original hashes were checked before uncropped WebP conversion. Existing menu names, descriptions, categories, links and navigation source remain unchanged. Main/Abdul are intentionally excluded.

Actual local Chromium checks: desktop1440, mobile375 and narrow320; all six categories opened by pointer, Chef Specials closed then reopened with Enter, all27 images loaded, no page/item containment overflow. Navigation opens with Close focus/body lock and Escape returns focus/unlocks without losing the open category. Desktop full chicken plate and mobile chef dishes were visually inspected against source contact sheets; phone descriptions span the row. Production build/link checks pass with48 built files. The isolated runtime check and scoped live Sol review/final delivery are recorded separately in the private update evidence; local appearance does not imply a live pass.
