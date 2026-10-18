# Runtime and external integrations

This is a static restaurant presentation site. There are no local customer accounts, forms, carts, payments, reservations, databases or submission APIs. External ordering stays with the restaurant's existing providers.

## Runtime contract

| Route | Behavior |
|---|---|
| `/`, `/menu/`, `/visit/` | Physical HTML entry points; direct loads and refreshes return the appropriate page. |
| `/health` | HTTP 200, plain `ok`, uncached. |
| `/version.json` | HTTP 200 JSON with the exact built Git `revision`; `Cache-Control: no-store`. |
| `/images/`, `/fonts/`, `/assets/` | Same-origin optimized business media, licensed fonts and built resources. Missing files return 404. |
| Unknown or dotfile path | HTTP 404; no filesystem or environment data exposed. |

All responses carry `X-Robots-Tag: noindex, nofollow`; HTML repeats that intent. These X Solutions-hosted presentation environments are not a claim of a purchased or business-operated official domain. The canonical/social URL is the production presentation URL, with page-specific paths. External runtime resource allowlist is empty.

The preserved Nginx runtime listens on 8080 as user `101:101`, supports a read-only root with disposable `/tmp`, `/data` and `/config`, exposes a Docker health check and labels the exact source/revision. No persistent application state is required. Production and the two managed previews receive independent stacks.

## Checked customer actions

- **Primary Order online:** [DoorDash](https://www.doordash.com/store/t%C3%ADpicos-pollo-amigo-towson-34201028/67441146/), matched to the current restaurant identity, address and phone. Sol's browser CTA check reached the matching restaurant page. Current prices, availability, options and checkout belong to DoorDash.
- **Alternate ordering:** [Uber Eats](https://www.ubereats.com/store/pollo-amigo-carry-out/HIRLkQyuT3KfxrrACosqSQ), verified to the same York Road address under its older carry-out label. No inferred third-party availability guarantee.
- **Call:** `tel:+14104940061`. The browser hands off to the visitor's telephone application; no call was placed.
- **Directions:** the verified [Google Maps place](https://www.google.com/maps/place/Pollo+Amigo+-+T%C3%ADpicos+la+Bendici%C3%B3n/data=!4m2!3m1!1s0x89c80fade7d32fb5:0x112cdfd17764a7d8), where visitors can choose a route.
- **Social:** the verified [current Facebook profile](https://www.facebook.com/profile.php?id=61590332314504).

The complete destinations are enforced by `app/xs-check.json`. The old unrelated domain is excluded. No customer transaction, external authentication or provider error/success checkout state was tested or simulated.

## Frontend states and integration boundary

The mobile navigation uses a native modal dialog with initial focus, Tab containment, Escape/close and restored trigger focus. Six native menu disclosures expand/collapse independently. All 40 accepted menu entries are informational and price-free. Phone and ordering remain accessible alternatives. No pending backend integration is hidden behind a decorative control.

Initial Astra validation on source `cbb047ac335e6baafc7e7a9086d9c542f403644f`: lifecycle container checks passed; an isolated, network-disabled, read-only runtime passed all three routes, health, exact uncached revision, authentic-image response, noindex, and real 404s for missing pages/assets and dotfiles. Desktop and 375px mobile sanity checks found no overflow or broken images; dialog open/close/focus return and menu expansion passed. Detailed private receipts are retained with the build. Repeat the focused release checks after refinement.
