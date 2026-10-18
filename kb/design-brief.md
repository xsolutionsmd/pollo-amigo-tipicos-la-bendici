# Design brief
Research and scope accepted October 18, 2026; reference selection follows this functionality decision.

## Visitor job and primary action
Help a nearby diner choose food, order through the restaurant's existing service, or visit/call. Primary action: Order online on the current-name DoorDash storefront [S3]; secondary: explore the menu and get directions. Preserve the verified Uber Eats alternative [S5].

## Content plan
- `/`: combined business identity, handmade pupusas and pollo a la brasa, selected authentic dish photography, brief food introduction, menu/order/visit actions. No invented founding story, owner, review proof or restaurant scale. [S1][S3][S4]
- `/menu/`: all 40 live-platform entries in the six sourced categories, concise descriptions only where supported, no unverified in-store prices. A compact note links current ordering prices/options to DoorDash. Keep the six dated print-only additions out of this current menu. [S3][S6]
- `/visit/`: address, primary public phone, corroborated weekly hours, actual storefront and interior, Google directions, Facebook and ordering links. No invented email, parking or accessibility promises. [S1][S2][S4][S7][S12]
- Public content comes from `offerings.md`, `contact-and-hours.md`, `company-profile.md` and `sources.md`; no AI-generated platform dish descriptions.
- Coordinator inspected three contact sheets covering the food/storefront library plus full current logo and interior. Hero candidate `f743b1698370` (whole roast chicken), signature dish `f29496cd832e` (pupusas), supporting food `d5fa1d38cc74` (El Paso Burrito), `f41a9da81e6b` (yuca with pork rinds), actual storefront `cb7364eb559d`, interior `c3032e0ed75d`, logo `345265e4f217`. All resolve to full hashes in the private manifest. Orange food backgrounds, navy/cream logo and genuine modest dining space guide reference fit.
- The primary actions and hours were verified in live research; external transaction completion is outside scope. Unknown operator name, holiday exceptions, in-store prices, 13 exact item photos and ambiguous salmon variants remain in `open-questions.md`.

## Template site
**Selected October 18, 2026: El Pastor**, https://www.tacoselpastor.co.uk/ ; menu https://www.tacoselpastor.co.uk/locations/london-bridge/menu/ ; visit/location https://www.tacoselpastor.co.uk/locations/london-bridge/ . Coordinator inspected desktop 1440×900 and phone 390×844, including the mobile navigation open/close and menu category expansion.

The reference already demonstrates the scoped presentation flows: photographic restaurant home, separate readable menu with expandable text categories, separate location page with hours/address and prominent main action. Its original reservation action is replaced by the company's verified external Order online link, not copied as a reservation feature.

Why it fits: bold narrow headings and generous cream space give strong hierarchy; food is the main visual subject. The company's cohesive orange-background dish photos can occupy the same strong photographic roles without suggesting an upscale dining room it does not have. Its navy/cream logo supplies the accent palette. A simple home/menu/visit adaptation fits one restaurant better than copying the reference's multi-location, bar, newsletter and party sections.

Runner-up inspected on desktop/mobile: https://www.loroeats.com/ . Same food/menu/order visitor job, but the inspected desktop header exposed crowded secondary links and its promotional overlays obscured much of both views. El Pastor supplies a more coherent, reproducible hierarchy for this scope.

**Menu policy:** observed reference menu has text-only item rows in outlined accordion categories, no per-item photos. Keep those rows text-only on main/production and Abdul. Use authentic food photography on the home and menu hero, plus real place imagery on Visit. After normal verified delivery, add matching menu photos to Derek only using the scoped variation process (27 matched; 13 honest gaps).

Adopt closely: restrained header with round logo, strong main action and hamburger; full-bleed photographic hero with very large condensed headline; warm cream content panels; narrow uppercase section headings; monospaced body copy; thin borders and square buttons; asymmetric overlapping title panels on inner pages; outlined text-menu accordions; spacious location details; mobile stack and full-screen navigation. Do not copy proprietary fonts, photos, code, logos or wording.

Intentional adaptations: navy replaces the reference's dark green to match the current logo, warm cream remains; orange in actual food images remains unaltered. Use appropriately licensed narrow display and monospaced fonts (maximum two). The whole-chicken hero needs a composition retaining the complete plate; mobile can stack photo and text as the reference does. Use a compact authentic dish feature strip in the restaurant-carousel position, real pupusa imagery in the split story module and storefront/location content in place of multi-location claims. Avoid ongoing automatic motion unless a pause exists. Keep all details true; no year founded, named chef, awards or locations are invented.

## Visual direction
One coherent El Pastor system with company navy, cream and real orange photography. Preserve its proportions and spacing, not a generic card dashboard. Use short deliberate transitions, working accordion and navigation states, reduced-motion support and clean keyboard focus. The observed source briefly loaded a white mobile hero before its image; our build must reserve image space and show stable content. Do not copy source popup/newsletter/tracking defects.

## Accepted decisions and corrections
October 18 user build instruction and standing workspace preferences: separate pages, no decorative numbering, real supplied/gathered business assets, consistent restrained fonts, mobile card/control containment, all three environments, no Stitch. Standing photo permission covers the whole gathered business library; source attribution remains intact.

## X Solutions standing design rules

- Thoughtful, distinctive, professional and clean: strong typography, authentic
  photography, smooth restrained motion, enjoyable interaction; necessary copy only.
- No decorative numbering: no section ordinals, numbered badges, photo prefixes or
  counters such as 01 / 02. Factual numbers (prices, phone, dates) are fine.
- Primary navigation uses separate page URLs unless explicitly requested otherwise.
  Prefer one font family, at most two complementary families unless established
  company branding requires more. Adapt the inspected reference closely and keep
  company-specific structural changes natural and justified by the visitor's task.
- Choose photos for composition, quality, real work shown, variety and recency across
  the whole history, not just the newest posts. Never present generated or competitor
  work as the client's.
- Check every form control against its containing card (including padding) on narrow
  phones, with enlarged text and focus states; page-level overflow checks are not enough.
- Native inputs, keyboard access, visible focus, reduced-motion support and a pause
  control for ongoing decorative movement.
- Consistent SVG arrows/icons (no text glyphs or emoji arrows). No visitor-facing demo,
  preview or "functionality" banners and no repeated disclaimers.
- Optimise without degrading the experience: right-sized media, lazy loading, no
  needless browser work.
