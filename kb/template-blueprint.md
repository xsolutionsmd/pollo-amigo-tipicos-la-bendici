# Template reconstruction blueprint

October 18, 2026. Initial reconstruction by Sol; coordinator acceptance, backend verification and refinement remain separate stages.

## Evidence and limits

Chosen reference: [El Pastor home](https://www.tacoselpastor.co.uk/), [London Bridge menu](https://www.tacoselpastor.co.uk/locations/london-bridge/menu/), [London Bridge location](https://www.tacoselpastor.co.uk/locations/london-bridge/). No replacement search. Coordinator captures: `private/runs/reference-selection/{home-desktop,home-mobile,navigation-mobile,menu-desktop-open,menu-mobile-open,visit-desktop,visit-mobile}.png` in the private company workspace. Sol additionally inspected the live home and menu at 1440×900 and 390×844 in an owned T3 browser; opened Entradas, measured layout/type and inspected the rendered mobile hero. Further captures and measured observations are in `private/runs/template-analysis/`.

**Method: accepted browser/devtools fallback.** The reference was analyzed with ordinary browser and developer-tools inspection: rendered desktop/mobile pages, DOM, computed styles and measured layout, visible interactions (navigation open/close, category expansion) and actual captures. Under Derek's October 18, 2026 correction, REA is preferred tooling but not an acceptance gate, and this evidence is sufficient for reconstruction and refinement.

Historical REA tool limitation (not a remaining acceptance blocker): T3 native preview exposes no literal-port TCP CDP endpoint, and the dedicated compatibility helper start was rejected before execution by automatic review (`rejected: blocked by policy`, no more specific reason). That route was stopped and not retried; no endpoint/target was invented, no REA evidence IDs exist and no other profile or global settings changed. No REA pass is claimed. The exact attempt is retained privately.

## Observed structure and reproduction values

At 1440×900 the home hero is about 868px high, with a fixed 108px header, content left edge 157px and content width 1126px. A small round mark sits left; the main action and hamburger sit right. The headline is left aligned low in the hero, at 180px/144px with 18px tracking in the proprietary condensed display font. Original licensed replacements: Barlow Condensed 600, Source Code Pro 400. Use two families only; do not copy reference font files. Section headings correspond to 72px/1.1 and smaller labels to 28px/1.0; mono copy is roughly 18px/24px. Warm cream observed as `#fbf5f1`; source dark green becomes company navy `#073453`, grounded in the authentic logo [S4]. Controls are square with 1px muted borders, generous padding and SVG arrows.

Home sequence: photo hero → spacious introduction and photo feature strip (the source uses a location carousel) → asymmetric split photo/text module → compact practical menu/visit/order routes → footer. Reproduce hierarchy, cream spacing, image emphasis and alignment, while omitting unsupported multi-location claims, parties, news and newsletter. Feature imagery shows authentic dishes, not more locations. No automatic carousel or continuous motion is needed for three photos.

Inner pages: cream header, breadcrumb, broad photo, an offset cream title panel overlapping its lower edge by approximately 50–90px, fine border, 80px title. On the source menu a centered category area is roughly 750px wide, rows about 100px tall and 30px apart; category label left, small chevron right. Expansion exposes plain mono item names/details, no item photos. Source location uses an analogous hero/title, address/hours, main action and spacious supporting photography. Preserve those relationships rather than importing a dashboard/card grid.

At 390px the header condenses to logo/action/hamburger, with comfortable edge space. Home photo comes before the stacked headline; reserve its area immediately instead of reproducing the source's brief empty-image state. Inner-page title panels and split modules stack. The source navigation uses a dark green full-screen layer with cream mono links; reproduce it in company navy with three practical links. Original implementation uses a native modal dialog with initial focus, Escape close, focus return and scroll lock. Native details/summary provides category keyboard behavior and visible focus. Active links expose `aria-current`. Short color/transform transitions only; reduced-motion disables them. No decorative ordinals, moving ribbon or preview banners.

## Company mapping and factual boundaries

| Reference role | Company implementation and source |
|---|---|
| Home food hero | Whole Chicken `f743b1698370`; contain the full chicken/plate, original orange intact. Large Pollo Amigo title and combined Típicos la Bendición identity [S1][S3][S4]. |
| Location feature carousel | Three actual food features: Carne Asada `b9499b52c71d`, El Paso Burrito `d5fa1d38cc74`, Yuca with Pork Rinds `f41a9da81e6b` [S3]. Single Towson location, no fictional branches. |
| Split story module | Pupusas `f29496cd832e`, handmade pupusas plus Peruvian-style pollo a la brasa and broader Latin dishes [S1][S3][S4]. No founder/year/award story. Image is general food photography, not a two-pupusa bundle promise. |
| Menu inner hero / rows | Pupusa photograph; all 40 source entries across Chicken 3, Chef Specials 6, Everyday Special 3, Mexican Food 9, Other Delicacies 7, Side Orders 12 [S3]. Exact source identities kept. Descriptions only from corroborated text; brief handmade-pupusa wording, no internal evidence caveats in public rows. Empanadas has no unsupported filling. Six dated print supplements excluded [S6]. |
| Location hero / story | Storefront `cb7364eb559d` with both signs and door retained; dining room `c3032e0ed75d`, the genuine small casual space [S4][S12]. |
| Round mark | Authentic current logo `345265e4f217`, original proportions and identification retained [S4]. |
| Reservation action | Verified **Order online** → DoorDash, alternate Uber Eats, phone and directions [S1][S3][S5]. Original reference reservation interaction does not imply a local reservation system. |

Visit uses 714 York Rd, Towson MD 21204, 410-494-0061, Mon–Fri 9am–9pm, Sat 10am–8pm, Sun 11am–6pm [S1][S2][S7]. Current Facebook included [S4]. No invented email, parking/access guarantees, operator identity or ownership history. Platform prices differ, so this informational menu is price-free; one compact ordering note points to provider options/current prices. No repeated disclaimers. Keep Fresh Salmon Filet and Salmon distinct pending clarification. The 27 matched / 13 missing exact photo records remain useful for a later Derek-only variation; main and Abdul menu rows stay text-only.

## Flows and backend boundary

Home → Menu → expand/collapse any of six categories → DoorDash. Home/Menu → Visit → directions or native phone. Full-screen navigation opens/closes repeatedly, navigates to real separate URLs, and returns keyboard focus. Direct load, refresh and browser history must work on `/`, `/menu/`, `/visit/`. The no-JavaScript baseline retains content, native category disclosure and main links; the inline navigation fallback provides all routes.

No local submission, cart, checkout, validation, account or data mutations. External ordering availability/fees, payment success, provider errors and post-checkout states are unknown and outside this frontend. No new API is proposed. Astra should verify the preserved static Docker/Nginx health, revision, noindex and route contract plus real integration destinations. No reference transaction or form is submitted. Preview social metadata is deterministic and noindex; hosted social-card verification belongs to the later publication stage.

## Refinement adaptations

October 18, 2026, Claude refinement of the same frontend: the header now matches the reference at every width (logo, Order online, full-screen navigation; inline links only as the no-script fallback). Photo fields use the measured orange of the actual dish photographs, with short edge fades, so the hero and pupusa module read as continuous colour fields rather than framed rectangles. Visit's inner hero uses the Menu page's 650px height so its overlapping title panel appears in the first desktop view, matching the reference relationship. Category content and the navigation layer have short fades disabled by reduced motion. No content, menu, media or integration changes.
