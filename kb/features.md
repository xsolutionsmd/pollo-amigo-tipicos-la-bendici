# Features

Landing build: no custom features or backend. Functionality decision made October 18, 2026 before reference search.

## Selected features

- Read separate Home, Menu and Visit pages, with active-page navigation, accessible mobile navigation, direct loads, refresh and browser history.
- Browse the complete 40-entry sourced informational menu by its six categories. Categories may use accessible anchor navigation; no cart or payment UI is owned here.

## Existing systems we integrate with (instead of rebuilding)

- **Integrate:** Order online opens the verified current-name DoorDash storefront: https://www.doordash.com/store/t%C3%ADpicos-pollo-amigo-towson-34201028/67441146/ . Phone remains a fallback. [S3]
- **Integrate:** Uber Eats remains an alternate same-address destination: https://www.ubereats.com/store/pollo-amigo-carry-out/HIRLkQyuT3KfxrrACosqSQ . [S5]
- **Integrate:** native telephone link, Google Maps directions, verified Facebook page. [S1][S4]

## Per feature: user stories, states, business rules

Use price-free informational menus; platform prices and availability remain with the ordering provider. Omit outdated promotions and printed-only items from the current menu. Show the corroborated storefront schedule, without claiming holiday exceptions. No fake booking/contact form, custom ordering, payments, staff admin, fabricated review proof or owner story.

## Operational checklist (what the owner must provide or approve)

No owner input is needed to implement the verified presentation scope. Optional future improvements: an owner-maintained menu/price feed, current missing-dish photography and holiday-hours updates. These are not added to this build.

## Acceptance

Required build checks: all three pages and direct refresh; full menu reconciliation; real photographs and appropriate crops; no desktop/mobile overflow; card/control containment; mobile menu and keyboard focus; reduced motion; real CTA destinations; static image health/version/noindex contract. External checkout is not executed.
<!-- Functional builds: one row per scenario (see references/features.md, feature acceptance gate).
Phase pre: every row must pass before build counts as done. Phase live: every row must pass
before deploy counts as done. Editing results here doesn't make the build stale. -->

| Phase | Feature | Scenario | Viewport | How tested | Result | Evidence |
|---|---|---|---|---|---|---|
