# Handoff

<!-- xs-status:start -->
Pipeline status (generated 2026-10-18T18:15:25.087341+00:00):

- **identity**: done
- **research**: done
- **assets**: done
- **spec**: done
- **template**: done
- **content**: done
- **reconstruct**: done
- **backend**: done
- **refine**: done
- **build**: done
- **first-publish**: done
- **first-live-slack**: done
- **infra**: done
- **review**: done
- **fixes**: done
- **recheck**: done
- **deploy**: done
- **delivery**: done
- **final-handoff**: done
<!-- xs-status:end -->

## Current checkpoint — October 18, 2026

The normal server-first workflow is complete and coordinator-accepted. Independent Sol High recheck passed **67 cases with no findings** at `5b9be3670be8593835b3d82fe9a60cce2ed77449`; the subsequent documentation release `f8fb126b8c803adde09993b443ca52430fafcfaf` passed final verification on all three environments with unchanged product source. Media and final team URL delivery were verified.

This branch now carries the final **Derek-only menu-photo variation**: 27 source-matched dish images beside the existing menu, with 13 unmatched entries kept as text. Full photos are contained without cropping; phone descriptions use the available row width. All 40 names/descriptions, six native disclosures and existing destinations are retained. Its own focused live review and final revision receipts accompany the scoped update; initial local checks are recorded in validation.

- Production: https://polloamigo.xsolutionsmd.com
- Derek: https://d-polloamigo.xsolutionsmd.com
- Abdul: https://a-polloamigo.xsolutionsmd.com
- Repository: https://github.com/xsolutionsmd/pollo-amigo-tipicos-la-bendici

Production and both previews are independent managed Oracle runtimes. Main and Abdul remain at the text-only menu; Derek's new menu imagery is an intentional product difference and must never be promoted or overwritten by a routine branch sync. Runtime, Dockerfile, server, deployment configuration and workflows are unchanged. Exact post-push branch/live and focused review receipts are retained in the private company workspace. Public legacy stage flags are supplemented by private receipts.

## Accepted design and content

Home `/`, Menu `/menu/`, Visit `/visit/` and the authored missing-page recovery preserve the accepted El Pastor design, actual company imagery, restrained consistent typography, square controls and no decorative numbering. Reference reconstruction used ordinary browser/developer-tools inspection with desktop/mobile evidence. The recorded REA tool limitation is historical; no repair, waiver or REA execution is claimed.

All 40 live-platform menu entries remain in six categories (3/6/3/9/7/12), with existing DoorDash and Uber Eats destinations. Main and Abdul retain the reference's text-only item rows. The sourced identity is Pollo Amigo – Típicos la Bendición at 714 York Rd, Towson, 410-494-0061. This static site adds no custom checkout, payment or customer transaction. No sale, individual operator identity or owner-approved menu is established.

The quick final food-identity pass compared the existing item index, provenance, original contact sheets and actual rendered desktop/mobile crops. No concrete dish correction was needed. The library has 34 originals: 27 DoorDash, three Facebook, one Maps interior and three Restaurantguru menu graphics. There are 27 mapped food photos and 13 exact-photo gaps; all nine source families were checked with bounded, honestly recorded coverage. Concealed fillings, recipes, portions and side inclusions remain unproven. Salmon is not substituted for Fresh Salmon Filet. See [media](media.md).

The current media ZIP was delivered to Abdul through the established team channel and verified after reload; an authenticated download matched its exact 14,869,796 bytes and SHA-256. Detailed file/message receipts remain private. The canonical team URL directory already has the correct three short URLs; its matching persisted readback was reused without editing. The original first-live notification is retained and must not be resent. Final URL/message verification is recorded privately after the documentation release.

## Evidence and next action

Private evidence: `runs/live-review-r1.md` and `.json`, `runs/fixes-r1.md` and its release evidence, `runs/live-recheck-r1.md` and `.json`, `runs/infra-r1.md`, `runs/food-identity-final.json`, `runs/media-delivery.json`, `runs/handoff-final.md`, `runs/handoff-verification.json` and `runs/slack-site-links.json`. Media originals/index/CSV remain in the private asset library; public source contains only selected optimized copies and sourced facts. See [validation](../docs/VALIDATION.md).

Normal final handoff is accepted. The scoped update `derek-menu-photos-20261018` owns this last addition and its focused live review, correction/verification and final URL delivery. Use its private receipts for the actual accepted revision. Preserve this branch-only difference during future syncs; never merge these menu photos into main or Abdul. All future work starts by checking the branch and live version.

Unknowns remain omitted: current in-store prices, individual operator name, holiday exceptions, six dated print-only dishes, ambiguous variants and 13 exact dish photos. No invented allergens, prices, ratings or operational promises.

## Cleanup

Retain the dedicated `polloamigo-build-20261018` builder/current cache, current correction check image, `app/node_modules` and `app/dist` for the immediate Derek-photo work; recheck after that variation. Preserve evidence, package, source and active managed runtime/recovery state. Own browser tabs close at handoff. The obsolete first-release archive remains intact because automatic approval review rejected its recycling; the private handoff records its exact path and 23,185,408-byte size for manual cleanup. Do not retry through another tool or shell. No global prune, gateway modification or unrelated cleanup.
