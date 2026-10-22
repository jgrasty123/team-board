-- Import of open tasks from Asana (generated)

INSERT INTO people (name, email, role) VALUES ('James Grasty', 'james@yecommerce.io', 'admin');
INSERT INTO people (name, email, role) VALUES ('Cris Mary Ann Tuga', 'crismaryann.twb@gmail.com', 'member');
INSERT INTO people (name, email, role) VALUES ('Drew Brunsky', 'drew@thebevconnect.com', 'member');
INSERT INTO people (name, email, role) VALUES ('Huzi', 'huzaifafreelance28@gmail.com', 'member');
INSERT INTO people (name, email, role) VALUES ('i_vladyka@yahoo.com', 'i_vladyka@yahoo.com', 'member');
INSERT INTO people (name, email, role) VALUES ('Jonathan Rose', 'jon@mymusicfolders.com', 'member');
INSERT INTO people (name, email, role) VALUES ('lindsay@gazebogreen.com', 'lindsay@gazebogreen.com', 'member');
INSERT INTO people (name, email, role) VALUES ('meghan@raincaper.com', 'meghan@raincaper.com', 'member');
INSERT INTO people (name, email, role) VALUES ('pratik.shopifydev@gmail.com', 'pratik.shopifydev@gmail.com', 'member');
INSERT INTO people (name, email, role) VALUES ('ted@itsonlynaturalgifts.com', 'ted@itsonlynaturalgifts.com', 'member');
INSERT INTO people (name, email, role) VALUES ('tumachekd@gmail.com', 'tumachekd@gmail.com', 'member');
INSERT INTO people (name, email, role) VALUES ('TWB PH', 'thewritersblockph@gmail.com', 'member');
INSERT INTO people (name, email, role) VALUES ('Waris Ali', 'haiderishani96@gmail.com', 'member');

-- BroBasket 2.0 (174 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('BroBasket 2.0', 'red', '1207217112591007');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'crismaryann.twb@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'drew@thebevconnect.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'huzaifafreelance28@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1207217112591007'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'To do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Finance', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Marketing', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Channels', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Website', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Warehouse Opps', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Office Opps', 7);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'IDEAS', 8);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'On Hold / Needs Feedback', 9);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), 'Complete', 10);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P3] BroBasket — price-band ad-group negatives ($150-200, $200-300, $250 and over)', 'AD-GROUP LEVEL ONLY — never campaign-level. These terms earn money in other price bands.

THEME C — `shopping - catch-all - tROAS 200%` → ad group `$150 - $200` → add exact negatives:
- gift baskets with alcohol ($27.41)
- alcohol gift baskets ($18.77)
- retirement gifts for men ($13.76)
- espresso martini gift basket ($12.18)
- whiskey gift basket ($10.62)
Subtotal $82.74.
CONTRAST: `alcohol gift baskets` returns 4.34 ROAS in the catch-all overall and 3.12 in the DSA; `whiskey gift basket` returns 10.89 in the DSA. The $150-200 band is simply the wrong answer for these queries.

THEME D — bourbon terms split across bands. Add exact negatives:
- `shopping - catch-all - tROAS 200%` → ad group `$200 - $300`: bourbon gift baskets ($15.51)
- `shopping - catch-all - tROAS 200%` → ad group `$250 and over`: bourbon basket ($14.63)
- `shopping - converters v2 - tROAS 300%` → ad group `converters`: bourbon gift baskets ($28.03), bourbon gift basket ($21.40)
Subtotal $79.57.
CONTRAST: `bourbon gift basket` returns 8.72 ROAS in the catch-all; `bourbon basket` returns 177.69 in converters v2. Leave those placements alone.

This is the product-group routing problem flagged in the SOP, not a keyword problem.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:46:19.706Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219651347685547');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P3] BroBasket — check Merchant Center diagnostics (manual, not in pipeline)', 'Merchant Center diagnostics are not in the script export and there is no API path in this pipeline — this is manual.

CHECK: Merchant Center → Products → Diagnostics for the BroBasket feed. Look for item-level disapprovals, feed warnings and policy flags.

CONTEXT from the 90-day Shopping data:
- 395 SKUs seen
- 117 converting
- 217 with spend and no conversions
- 62 served but never clicked
- $29,064.43 Shopping spend (90d)

Paste any disapprovals or item-level issues into the next Claude run and they will be triaged against Products_90d spend data.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:46:19.705Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219651342943372');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P1] Test tracker — close the 114-day-old Active test and name the campaign', 'The Testing Sheet in the Optimization Checklist has exactly one row tagged Active, and it has been open 114 days against a 2–4 week read window:

  "Campaign  removed bid adjusments - 6/23 - "
           Cost     Revenue   ROAS     CPA      AvgCPC  Conv     Clicks   AOV
  Before   $3,022   $1,244    0.41     $34.08   $4.86   88.67    764      $14.00
  After    $3,731   $396      0.11     $41.99   $4.88   88.85    622      $4.00
  Change   +23.47%  -68.17%   -73.17%  +23.21%  +0.41%  +0.20%   -18.59%  -68.15%

VERDICT: FAILED on every axis — revenue down 68%, ROAS down 73%, conversions dead flat at +0.20%. More spend, no more conversions, two-thirds less revenue.

BUT IT NEEDS A NAME BEFORE IT CAN BE CLOSED. The row records no brand and no campaign, and the figures (0.41 → 0.11 ROAS, $14 → $4 AOV) do not match any campaign currently live in BroBasket, Booze Finders or Bounty Basket. Either it belongs to a different account and should come out of this tracker, or it belongs to a campaign since renamed.

James: identify it, then mark it Failed — or delete the row if it is not one of these three accounts.

THE BROADER POINT: none of the October changes in any of the three accounts are logged in the tracker at all. Every verdict in this biweekly run had to be reconstructed by diffing today''s Campaign_Settings and Campaign_Perf against the 2026-10-12 weekly Docs. That is slow and it is lossy — the BroBasket tROAS 200% change nearly read as a month-old test instead of a three-day-old one, because Campaign_Perf reports current campaign names across all historical windows. An unlogged change is a change nobody can read later.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-17'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.401Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549577807550');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P1] All brands — export Auction Insights to the Marketing folder (no API exists)', 'BIWEEKLY ITEM 3. This data exists in no API, so it cannot be pulled — it has to be exported by hand.

WHAT TO DO, for each of the three accounts:
  Insights & Reports → Auction Insights
  Period: >= 7 days
  Segment by TIME and by DEVICE
  Export CSV → Drive folder 1F24vdRmf5IMKJhTLyyV7w0ESx2BsSjDw

CURRENT STATE: there is NO Auction Insights export in that folder. The newest CSV there is from 2025-07-08 and is a negative-keyword list.

Two exports do exist but are misplaced and stale — in a Downloads folder, dated 2026-09-02, covering 2026-08-03 to 2026-09-01, BroBasket only, not segmented by time or device. They were analysed in this run for what they are still worth (section 3b of the doc) but they predate the DSA scale-up and the brand IS move.

Booze Finders and Bounty Basket have NEVER had an export. Booze Finders is where it matters most: both its main campaigns are rank-limited (76.74% and 73.42% of IS lost to rank) and roughly 75% of its auction is going to competitors nobody has identified.

WHAT THE STALE BROBASKET FILES ALREADY SHOW — worth acting on:
- NEW ENTRANTS not in the SOP competitor list: gourmetgiftbaskets.com is the impression-share LEADER at 15.28% with the second-highest overlap at 19.68%, a direct gift-basket pure-play beating BroBasket on share. thebarreltap.com (11.48% overlap) and whiskeycaviar.com (10.49%) are spirits-specific direct category competitors, both with higher overlap than Amazon. spoonfulofcomfort.com has the highest absolute-top rate on the page at 45.84%. Also giftboxloveco.com, giftbasketstore.com, fountaingifts.com.
- POSITION-ABOVE-RATE (the most useful metric) reads badly: instacart 56.51%, amazon 56.26%, totalwine 54.97%, etsy 53.35%, spoonfulofcomfort 50.43%. Five competitors outrank BroBasket more than half the time while it holds <10% IS with ~6% outranking share. Standing conclusion holds: do not try to outbid this auction.
- BRAND: brocrates.com at 75.07% IS, 83.56% overlap, outranking BroBasket 25.50% of the time, with brocrates.ca alongside. BroBasket''s own brand IS moved 86.88% (early Sept) → 96.48% (today) — and that cost +36% brand spend for ZERO extra conversions. Cap the price, hold the share.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-20'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.020Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219565217683278');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P0] BroBasket — pause search - product AI MAX ($125/day, zero impressions)', 'EXACT CHANGE: search - product AI MAX → PAUSED.

Third consecutive window with ENABLED status, $125/day budget and ZERO impressions, zero clicks, zero spend. Flagged in the 2026-Q3 review at $100/day; the budget was since RAISED to $125/day while it continued to serve nothing. It was action #1 on the 2026-10-12 weekly check and is still enabled.

$125/day of nominal allocation is parked in a campaign that does not run. Either pause it or diagnose why it serves nothing — but it should not sit enabled and empty for a fourth window.

Context: AI Max already failed in the Bounty account (YE | shopping - AI MAX - MaxValue, 0.83 ROAS on $387.95). Treat auto-everything builds with suspicion in these accounts.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-16'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.492Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549577092151');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P2] BroBasket — confirm the pmax - brand pause was deliberate; re-read consolidation 2026-11-01', 'TEST ⑥ — PMax consolidation: pmax - brand - tROAS 500% folded into pmax - feed & brand shopping - tROAS 350%.

COMBINED read across both campaigns, 9/15–10/14:
           Cost        Revenue      ROAS     CPA      AvgCPC   Conv     Clicks   AOV
  Before   $3,620.74   $11,154.47   3.08     $59.13   $1.61    61.23    2,255    $182.17
  After    $3,256.51   $11,178.54   3.43     $59.36   $1.75    54.86    1,863    $203.76
  Change   -10.06%     +0.22%       +11.42%  +0.38%   +8.87%   -10.40%  -17.38%  +11.85%

VERDICT: KEEP RUNNING — not yet a win. Revenue held flat on 10% less spend and ROAS improved 11%, a real efficiency gain. But conversions fell 10.4%, so it does not meet the bar of scaling conversions and revenue materially. As a consolidation rather than a scale test, it is working.

The read is not clean either: pmax - brand still spent $563.23 inside Last30 and $191.47 inside MTD before the pause fully took effect. RE-READ 2026-11-01 for a full 30 days post-pause.

OPEN QUESTION, carried from 2026-10-12: pmax - brand was running 5.47 ROAS in Last30 when it was paused. If the pause was deliberate consolidation into the brand search campaign, fine — but brand search CPA went $21.47 → $29.26 (+36%) in the same window, so brand got MORE expensive, not cheaper. Confirm the intent so the next read knows what it is reading.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.551Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549493905594');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P2] BroBasket — shopping - converters - tROAS 250% fails two gates: pause or fix', 'TEST ⑧ — newly enabled campaign, did not appear in the 2026-10-12 check. Replaced shopping - converters v2 - tROAS 300%, which was paused ($953.89, 6 conv, 1.10 ROAS in Last30).

CURRENT STATE: ENABLED at $75/day, with $84.72 spend, 12 clicks and 2 conversions over 30 days. 0.4 clicks/day. 0% impression share.

TWO COURSE GATES FAILED:
- 2 conv/30d on TARGET_ROAS. The smart-bidding gate is <15 conv → manual or Max Clicks only; 15–29 → Max Conversions only; 30+ → tCPA/tROAS okay. At 2 conversions this strategy is not earned.
- 0.4 clicks/day against the 10 clicks/day budget floor.

So $75/day of nominal budget sits in a campaign that barely serves. As configured it is neither a test nor a campaign — there is nothing to read and nothing being bought.

DECIDE: either give it a reason to serve (product groups, bid strategy it has earned, a real budget floor), or pause it and stop carrying the nominal allocation. Note the account already has $125/day parked in search - product AI MAX serving nothing — this is the same pattern.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.497Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549493889726');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P2] BroBasket — apply or confirm the brand max CPC cap: none → $1.40', 'Recommended 2026-10-12. The export cannot confirm whether it was applied — Campaign_Settings has no max-CPC column — and AvgCPC is still $1.70, which suggests it was not.

THE CASE GOT STRONGER. search - brand - tImp Share - Abs Top, 9/15–10/14:
           Cost      Revenue     ROAS    CPA      AvgCPC  Conv    Clicks  AOV
  Before   $665.72   $5,151.70   7.74    $21.47   $1.61   31.00   414     $166.18
  After    $907.04   $6,571.30   7.24    $29.26   $1.70   31.00   534     $211.98
  Change   +36.25%   +27.56%     -6.38%  +36.25%  +5.63%  0.00%   +28.99% +27.56%

+36% spend bought EXACTLY ZERO incremental conversions (31.00 → 31.00), for the second window running. Revenue rose purely on AOV. CVR fell 7.49% → 5.81%.

Cross-referenced against the Auction Insights export: BroBasket''s brand impression share was 86.88% in early September and is 96.48% today. That ~10 points of brand IS cost ~$241/30d and produced no extra orders. That is the expensive tail of the brand auction, which is exactly where a CPC cap belongs.

EXACT CHANGE: Campaign → Settings → Bidding → "Set a maximum CPC bid limit" → $1.40. Hold 2 weeks, re-read 2026-10-29.

DO NOT cut the IS target. BroCrates sits in 83.56% of these brand auctions, holds 75.07% IS and outranks BroBasket 25.50% of the time, with brocrates.ca alongside it. Ceding share invites them into a near-name collision you cannot afford to lose. Cap the price, hold the share.

Benchmark: spoonfulofcomfort.com caps brand eCPC below $1.20 (visible in its ad URLs).

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.510Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549576907707');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P1] BroBasket — log WON test to the Testing Sheet: search - dsa budget scale', 'The only test in the portfolio with a genuinely complete read window (~33 days post-change). Paste-ready row:

LABEL: "search - dsa - tROAS 300% — Budget scaled ~3x to $125/day, 9/15–10/14"   → WON

           Cost        Revenue      ROAS     CPA      AvgCPC   Conv      Clicks    AOV
  Before   $1,166.98   $4,501.03    3.86     $46.11   $2.28    25.31     512       $177.84
  After    $3,719.81   $10,173.58   2.73     $67.29   $2.81    55.28     1,326     $184.04
  Change   +218.76%    +126.03%     -29.09%  +45.94%  +23.08%  +118.41%  +158.98%  +3.49%

WHY WON: conversions +118%, revenue +126%. ROAS fell 29% and CPA rose 46%, but ROAS 2.73 is still 61% above the 1.70 break-even and CPA $67.29 is 44% under the ~$120 break-even CPA. Contribution at the 62.5% margin midpoint went $1,646 → $2,639, up 60.3%. The ratio got worse and the dollars got much better.

CARRY FORWARD: it now delivers 2.73 against its own 3.00 target and 81.25% of IS is lost to RANK, not budget — so more money will not buy more of this. Hold the target at 3.00. Do not scale again this window.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-17'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.556Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549771657772');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P2] BroBasket — launch Ad Variation: swap 2 weak descriptions, 30 days, sync ON', 'THE NEXT AD TEST. Start only AFTER the RSA consolidation task is done.

TYPE: Ad Variation applied to 100% of traffic — NOT a 50/50 experiment. The ad group gets ~1,305 top-position impressions over 30 days; a 50/50 split leaves ~650 per arm, which will never reach significance on a ~7% CVR. The split is what kills the test, so do not split.

SCOPE: Campaign "search - brand - tImp Share - Abs Top - 2.75 max cpc", ad group "BroBasket Brand", the single consolidated RSA.
DURATION: 30 days, 2026-10-15 to 2026-11-14.
SYNC: ON, so later edits to the original ad carry into the variation.

REPLACE these two descriptions:
  "BroBasket Aims To Help You Find The Perfect Gift For The Father, Brother Or Friend"   118 clicks, 4 conv, $5.34/click
  "For Those With Exceptional Taste I Premium Gift Baskets I Read Our Bro Basket Reviews" 122 clicks, 4 conv, $5.16/click
     (note: the pipe character renders as a capital I — "Taste I Premium" reads as a typo in the live ad)

KEEP these two:
  "Unique Gift Baskets For Everyone You Know. Shop Now"                     393 clicks, 27 conv, $15.12/click
  "Get Him A Gift He Will Appreciate! His Favorite Beer, Wine Or Booze."    388 clicks, 25 conv, $12.74/click

The two weak ones run at roughly a third of the revenue per click of the two keepers.

PROPOSED NEW COPY:
  Description 1: "Build your own gift basket — pick the bottle, the snacks and the box. Ships nationwide."
  Description 2: "Thousands of gifts sent since 2013. Add engraving and a handwritten card at checkout."
  Headline:      "Build Your Own Gift Basket"  (fills the slot freed by the DKI headline)

GROUNDING: the build-your-own angle is the one replacement with hard evidence behind it — /products/customize-your-own-gift-basket returns 136.91 ROAS on the "bro crates" query. It is the strongest converting page in the brand neighbourhood and the natural answer to the BroCrates name collision: it says what BroBasket does that they do not.

VERIFY BEFORE PUBLISHING: confirm nationwide shipping, engraving + handwritten card at checkout, and the founding year against the site. Do not ship a claim the site does not support.

SUCCESS CRITERION: revenue per click on the new descriptions >= $12.74 (the weaker of the two keepers), with no loss of ad group CVR.
READ ON: 2026-11-14. Do not read earlier and do not stack another ad change on this ad group before then.

UI path (may have moved — Google relocates this menu periodically): Campaigns → Experiments → Ad variations.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-22'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.503Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549895836570');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P1] BroBasket — consolidate BroBasket Brand: 2 RSAs / 30 headlines → 1 RSA / 10 headlines', 'AD TEST REVIEW 2026-10-15. Do this BEFORE the ad variation task.

WHY: the ad group gets 1,404 impressions over 30 days at 92.97% top IS = ~1,305 top-position impressions, against the course threshold of ~2,000. It carries 30 headlines across TWO separate RSAs — about 43 top-position impressions per headline per month. That is why all 6,991 account assets are ungraded (NOT_APPLICABLE, zero LOW/GOOD/BEST). The headlines are not being tested, they are being diluted. (Ad Strength is not a performance metric and is ignored.)

CUT these 12 headlines (clicks / conversions over 30d):
  {KeyWord:Curated Gifts For Any Occasion}   190 clicks, 3.33 conv — $3.02/click, weakest converting headline
  Order Online                                50 clicks, 1.50 conv — $4.66/click, generic
  Unique Gifts That Impress                   20 clicks, 0 conv
  10,000+ Customers Love Us                   14 clicks, 0 conv
  A Gift Worth Sharing                         7 clicks, 0 conv
  Alcohol Gift Baskets                         6 clicks, 0 conv
  The Perfect Business Gift                    3 clicks, 0 conv
  Get Him What He Really Wants                 3 clicks, 0 conv
  Crafted With Taste                           2 clicks, 0 conv
  Customizable Gift Sets                       2 clicks, 0 conv
  Customizable Gift Baskets                    1 click,  0 conv
  Exceptional Gifts                            0 clicks — never served

KEEP these 10, ranked by revenue per click:
  1  Personalized Gift Baskets        41 clicks,  6.50 conv, $1,674.37  ($40.84/click, 15.85% CVR)
  2  Shop BroBasket                  117 clicks, 12.83 conv, $3,043.65  ($26.01/click)
  3  Alcohol Gift Baskets Delivered   25 clicks,  3.00 conv, $553.56    ($22.14/click)
  4  Send Him A Booze Bouquet         11 clicks,  1.00 conv, $176.38    ($16.03/click)
  5  The Best Gift Baskets For Men   215 clicks, 14.67 conv, $3,416.66  ($15.89/click)
  6  The BroBasket Official Site     387 clicks, 27.00 conv, $5,941.53  ($15.35/click)
  7  Manly Gift Basket               138 clicks, 10.50 conv, $1,978.99  ($14.34/click)
  8  Great Liquor Gift Baskets        12 clicks,  1.00 conv, $121.33    ($10.11/click)
  9  The Best Gifts For Men           71 clicks,  3.33 conv, $622.44    ($8.77/click)
  10 Boozy Gift Baskets               38 clicks,  1.00 conv, $193.14    ($5.08/click)

  Seasonal 11th: Office Holiday Gift Baskets (13 clicks, 0.5 conv, $56.49). Weak, but the only corporate/holiday angle and Q4 is its season. Keep through December.

  DROP "The Bro Basket Official Site" (123 clicks, 4 conv, $5.12/click) in favour of "The BroBasket Official Site" ($15.35/click). Two spellings compete for the same slot; the one-word spelling wins 3:1.

CAVEAT ON THE RANKING: RSA asset reporting credits the whole served combination, so conversions are duplicated across co-served assets. The ranking is directional; the reliable signal is the zero-conversion end of the list.

THE REAL PRIZE: once one RSA carries ~1,300 top-position impressions across 10 headlines (~130 per headline/month), Google will begin grading assets and the next review will have real LOW/GOOD/BEST labels to work from. Right now it has none.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-20'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.563Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549771676490');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P0] BroBasket — shopping - catch-all is at NEGATIVE contribution: diagnose, change nothing', 'BIWEEKLY TEST REVIEW 2026-10-15 — the biggest finding of the run.

THE NUMBERS (LastMonth 8/31–9/29, 30d  vs  MTD 9/30–10/14, 15d):
  Cost/day       $195.47  →  $232.45   (+18.9%)
  ROAS           2.28     →  1.53      (-33.1%)   break-even is 1.70
  Conv/day       2.26     →  1.85      (-18.4%)
  CPA            $86.38   →  $125.92   (+45.8%)
  Contribution   +$83.38/day  →  -$10.68/day  (at the 62.5% margin midpoint)

It is negative across the whole 60–65% margin band (−$27 to −$293 over 15 days) and it is 37% of account spend.

AND: a tROAS 200% target was added to this campaign within the last 3 days. On 2026-10-12 it was "shopping - catch-all - Max Con Value" on MAXIMIZE_CONVERSION_VALUE with no target. That weekly check explicitly said "Not recommended this week: any bid-target change."

WHY THAT MATTERS: the 10/12 check found CVR collapsing 3.33% → 2.16% at FLAT CPC. Flat CPC with falling CVR is not a bidding problem — in Austin''s order it points past bidding to traffic quality, product mix or feed. A bid target does not fix that, and now two changes are entangled in one window, so the next read cannot separate a tROAS effect from a continuing CVR decline.

DO THIS:
1. Merchant Center → Products → Diagnostics. Check disapprovals and item-level issues. 219 SKUs took spend with no conversions over 90 days; 146 served and never got a click.
2. Review product mix / price bands in the campaign.
3. NO further bid or budget change. Hold $150/day despite 56.88% of IS lost to budget — fix before scaling.
4. Re-read the tROAS 200% test on 2026-10-29.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-16'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:27:57.573Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219549577447507');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-21] HOLD budget on shopping-catch-all — do NOT feed it despite 47.84% budget loss', 'Account: The Brobasket (449-182-0083)
Campaign: shopping - catch-all - Max Con Value
Setting: Daily budget
STAYS: $150.00/day — NO CHANGE. This is a deliberate decision, not an oversight.

IT LOOKS LIKE A BUDGET CASE AND IT IS NOT:
  47.84% of impression share lost to BUDGET (and 37.86% to rank)
  SearchIS only 14.30%
  BUT ROAS is 1.73 against a 2.75 target and a 1.70 break-even — it is $0.03 above break-even.

AUSTIN''S RULE: FIX BEFORE SCALING. An account or campaign below break-even gets fixed first; scaling it multiplies the loss. Adding budget to a campaign at break-even does not fix it.

WHAT ACTUALLY HAPPENED (this is the account''s whole story):
  Cost   $8,694.77 -> $5,119.96  (-41%)
  Conv      112.53 -> 43.78      (-61%)
  ROAS        2.51 -> 1.73       (-31%)
  CPA      $77.26  -> $116.96    (+51%)
  CVR       3.33%  -> 2.16%      (-35%)
  AvgCPC    $2.57  -> $2.52      (flat)

Spend fell 41% and efficiency fell WITH it — that is backwards. Cutting a budget normally concentrates spend into better product groups and ROAS RISES.

FLAT CPC WITH COLLAPSING CVR IS NOT A BIDDING PROBLEM. In Austin''s diagnosis order that points past bidding to traffic quality / product mix / feed. See task W1012-26.

It also spent $170.67/day against a $150/day cap, which means the budget was cut mid-window from roughly $290/day — so the campaign is still settling from that change. Another change now makes the read worthless.

RE-READ: 2026-10-19.', NULL, '2026-10-19'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.194Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414215121429');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-20] Pause ''search - product AI MAX'' — $125/day, zero impressions all quarter', 'Account: The Brobasket (449-182-0083)
Campaign: search - product AI MAX
Setting: Status
FROM: ENABLED ($125.00/day daily budget)
TO:   PAUSED

THE FACTS: zero impressions, zero clicks, zero spend, zero conversions — for the ENTIRE QUARTER.
  SearchIS 0.00% | IS lost to budget 0.00% | IS lost to rank 0.00%
  Bid strategy MAXIMIZE_CONVERSION_VALUE with tROAS 2.35

THIS IS A REGRESSION. The Q3 review (2026-10-06) flagged this campaign ENABLED at $100/day with zero impressions for the whole quarter. Since then the budget has been RAISED to $125/day and it has continued to serve NOTHING.

$125/day of nominal allocation is parked in a campaign that does not run.

EITHER:
  (a) PAUSE IT. Simplest, and it stops the phantom allocation distorting every budget read.
  (b) DIAGNOSE IT if AI MAX is strategically wanted. Check in this order: campaign status vs ad group status, ad group ads present and APPROVED, keywords/targeting present, final URLs valid, policy/disapproval flags, and whether an account-level or campaign-level exclusion is suppressing it. A campaign that cannot win a single impression in 90 days at $125/day has a configuration fault, not a bidding one.

Also note the gate it technically violates: 0.00 conv/30d on MAXIMIZE_CONVERSION_VALUE. Under 15 conv/30d the course allows manual or Max Clicks only. Academic while it does not serve, but it must not be switched on in this state.', NULL, '2026-10-13'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.181Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414274066253');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-30] Do NOT negative competitor or own-brand terms — script false positives', 'Account: The Brobasket (449-182-0083)
Action: IGNORE these Negative_Candidates entries. Guard task.

The script flagged all of these as ''zero conversions at or above spend floor''. Acting on them would negative your best traffic.

1. COMPETITOR NAMES — the theme returns 16.33 ROAS ($32.70 -> $533.95)
   Script flags: ''brocrates'' in search - dsa / ''dsa | product gift pages'' ($10.15) and / ''dsa | beer-gifts-for-men'' ($9.25); ''man crates'' in shopping - converters v2 ($10.30)
   REALITY: ''bro crates'' earns $533.95 on $3.00 of spend — 177.98 ROAS, 3.00 conversions.
   Conquesting BroCrates is working. Leave it on.

2. OWN BRAND — the theme returns 8.16 ROAS ($786.62 -> $6,416.58, 30.00 conv)
   Script flags: ''the brobasket'' ($38.57, EXACT) and ''thebrobasket'' ($20.36, NEAR_EXACT), both INSIDE search - brand - tImp Share / ''BroBasket Brand''
   REALITY: these are near-exact variants of ''brobasket'', which earns 12.39 ROAS on $324.00 with 17.50 conversions. Also converting: ''the bro basket'' (11.79 ROAS), ''bro basket'' (5.52), ''bro baskets'' (3.21), ''brobaskets'' (4.49).
   This is a script artifact of brand match-type splitting — attribution lands on one variant while a sibling variant shows zero. NEVER negative your own brand name.

WHY THIS KEEPS HAPPENING — SCRIPT FIX NEEDED (export script, v4):
  (a) Add a ConvertsElsewhere flag: check whether a term, or a near-variant, converts in another ad group / campaign / match type before flagging it. This week 19 of 72 BroBasket candidates ($296.50, 27%) were false positives; Q3 measured 31% here and 68% at Booze Finders.
  (b) Raise SpendFloor from the flat $8 to 1x that account''s break-even CPA: $120 BroBasket, $80 Booze Finders, $69 Bounty Basket. At $8 the tab generates 72 candidates for this account of which ZERO are actionable.
  (c) Exclude brand and competitor terms from the candidate list entirely, or tag them so they are never auto-actioned.', NULL, '2026-10-16'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.209Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219413984162403');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-22] Add a $1.40 max CPC bid limit to the brand tImpShare campaign', 'Account: The Brobasket (449-182-0083)
Campaign: search - brand - tImp Share - Abs Top
Setting: Bidding -> ''Set a maximum CPC bid limit'' (Campaign -> Settings -> Bidding)
FROM: no limit set
TO:   $1.40 maximum CPC
HOLD: 2 weeks

THIS IS THE ONLY BID CHANGE WORTH MAKING IN THIS ACCOUNT THIS WEEK.

THE PROBLEM: +43% spend for ONE FEWER conversion.
  Cost   $608.79 -> $868.97  (+43%)
  Conv     31.00 -> 30.00    (-1)
  ROAS      9.30 -> 7.38     (-21%)
  CPA     $19.64 -> $28.97   (+48%)
  AvgCPC   $1.58 -> $1.76    (+11%)
  SearchIS 96.03% | TopIS 92.42% | IS lost to rank only 3.97%

At 96% impression share it is paying up for the last three points — which is where brand bidding gets expensive fastest. The campaign is saturated; there is essentially nothing left to buy.

BENCHMARK (from the Q3 review): spoonfulofcomfort.com caps brand eCPC below $1.20, visible in its ad URLs. BroBasket is paying $1.76.

*** DO NOT CUT THE IMPRESSION SHARE TARGET ***
BroCrates (brocrates.com / .ca) sits in 83.56% of BroBasket''s brand auctions, holds 75% IS, and outranks BroBasket 25.50% of the time. It is a near-name collision. Ceding impression share invites them in — that is a standing brand-defence issue you cannot afford to lose.

Capping the CPC trims the expensive tail auctions while HOLDING impression share where it matters. That is the difference between this and an IS-target cut.

CONTEXT: brand terms cost $1.30-$2.50/click while the category term ''gift baskets for men'' costs $0.45.', NULL, '2026-10-14'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.208Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219430527976189');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-23] Route 8 queries out of the wrong ad groups (~$308/30d, ad-group-level negatives)', 'Account: The Brobasket (449-182-0083)
Setting: AD-GROUP-LEVEL negative keywords. NOT campaign-level — campaign-level would kill the converting traffic too.

THIS IS A PRODUCT-GROUP ROUTING PROBLEM, NOT A WASTE PROBLEM. Each query below converts well in ONE place and loses money in others. Per the SOP: several BroBasket terms earn 3-10x ROAS in one price band and waste money in another — use ad-group-level negatives.

FOR EACH, ADD THE TERM AS A PHRASE NEGATIVE TO THE LOSING AD GROUPS ONLY:

1. bourbon gift basket — waste $70.86
   CONVERTS: search - dsa / ''dsa | alcohol-gift-baskets'' — $3.75, 1.00 conv, 86.97 ROAS
   NEGATIVE IN: shopping - catch-all / $200-$300 ($30.71); shopping - converters v2 / converters ($21.40); search - dsa / ''dsa | whiskey-and-bourbon-gift-sets'' ($13.58); shopping - catch-all / $100-149 ($5.17)

2. bourbon basket — waste $68.62
   CONVERTS: shopping - converters v2 / converters — $1.15, 1.00 conv, 177.69 ROAS
   NEGATIVE IN: shopping - catch-all / $250 and over ($28.01); search - dsa / ''dsa | whiskey-and-bourbon-gift-sets'' ($13.84); shopping - catch-all / $150-$200 ($13.61); shopping - catch-all / $200-$300 ($13.16)

3. alcohol gift baskets — waste $62.66
   CONVERTS: search - dsa / ''dsa | alcohol-gift-baskets'' — $99.05, 2.00 conv, 2.61 ROAS
   NEGATIVE IN: shopping - catch-all / $150-$200 ($24.27), $50-$100 ($11.44), Top Performer ($11.40), $200-$300 ($5.39); shopping - converters v2 / converters ($10.16)

4. gift baskets for men — waste $37.83
   CONVERTS: shopping - catch-all / Top Performer — $35.25, 1.00 conv, 5.19 ROAS
   NEGATIVE IN: shopping - catch-all / $50-$100 ($15.10), $100-149 ($13.17); shopping - converters v2 / converters ($9.56)

5. whiskey gift basket — waste $20.47
   CONVERTS: search - dsa / ''dsa | alcohol-gift-baskets'' (13.82 ROAS) AND ''dsa | whiskey-and-bourbon-gift-sets'' (21.25 ROAS)
   NEGATIVE IN: shopping - catch-all / Top Performer ($12.68); shopping - converters v2 / converters ($7.79)

6. send liquor gift — waste $19.35
   CONVERTS: search - dsa / ''dsa | alcohol-gift-baskets'' — $21.92, 1.00 conv, 4.71 ROAS
   NEGATIVE IN: shopping - catch-all / $100-149 ($19.35)

7. beer gift basket — waste $16.79
   CONVERTS: shopping - catch-all / $50-$100 — $57.66, 1.00 conv, 1.61 ROAS
   NEGATIVE IN: shopping - converters v2 / converters ($11.77); search - dsa / ''dsa | beer-gifts-for-men'' ($5.02)

8. birthday gifts for him — waste $11.94
   CONVERTS: shopping - catch-all / $100-149 — $3.79, 1.00 conv, 103.89 ROAS
   NEGATIVE IN: shopping - converters v2 / converters ($11.94)

TOTAL RECOVERABLE: ~$308/30d without touching a single converting query.

NOTE: shopping - converters v2 is currently PAUSED, so items in that campaign can wait until/unless it is re-enabled — but ''bourbon basket'' CONVERTS there (177.69 ROAS), which is worth knowing before deciding its fate.', NULL, '2026-10-16'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.177Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219413983533374');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-28] Confirm the pmax-brand pause was intentional — it was at 5.16 ROAS', 'Account: The Brobasket (449-182-0083)
Campaign: pmax - brand - tROAS 500%
Current status: PAUSED

FLAGGING THIS BECAUSE IT WAS PAUSED WHILE RUNNING THE ACCOUNT''S BEST ROAS:
  Last30 (partial, before the pause): $615.60 spend, 16.72 conv, $3,178.90 revenue, 5.16 ROAS, $36.82 CPA
  Prev30 (full):                      $1,105.09 spend, 21.63 conv, 2.95 ROAS, $51.08 CPA

It was IMPROVING (2.95 -> 5.16) when it was switched off.

WHY THIS MATTERS: a meaningful share of the account''s -17% revenue this window is this pause plus the shopping-catch-all budget cut. Pausing your highest-ROAS campaign is the kind of decision that shows up as a revenue hole two weeks later.

THE LIKELY RATIONALE is consolidating brand spend into search - brand - tImp Share - Abs Top. If so, that is defensible — but the data does not support it having worked: that campaign''s CPA went $19.64 -> $28.97 (+48%) and its AvgCPC $1.58 -> $1.76 in the SAME window. Brand got MORE expensive, not cheaper, and total brand conversions did not rise (31 -> 30).

WHAT TO CONFIRM:
1. Was the pause deliberate, or collateral from another change?
2. If deliberate — was the goal consolidation, budget reallocation, or cutting PMax''s opacity on brand traffic?
3. If consolidation — the numbers say it cost money. Worth considering re-enabling at a reduced budget and reading the two side by side for 2-4 weeks.

Also paused and correctly so: shopping - converters v2 - tROAS 300% at 1.10 ROAS ($953.89, 6.00 conv, $158.98 CPA) — below the 1.70 break-even. And pmax - nofeed - tROAS 300%.', NULL, '2026-10-16'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.222Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414058738397');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-29] Catalog check before negativing IPA / vodka / golf / tequila ($170.84/30d at zero conv)', 'Account: The Brobasket (449-182-0083)
Campaign: shopping - catch-all - Max Con Value (primary), plus search - dsa
Setting: campaign-level PHRASE negatives — ONLY IF the catalog check below comes back negative.

STEP 1 — DIAGNOSE FIRST. Check the Shopify catalog (new-brobasket.myshopify.com / thebrobasket.com) for: IPA beer baskets, vodka gift baskets, GOLF gift baskets, tequila gift baskets.
  - NOT STOCKED -> add the negatives. The query can never convert.
  - STOCKED     -> this is a FEED-TITLE or LANDING-PAGE problem and a negative buries it instead of fixing it.

STEP 2 — THE THEME DATA (zero conversions account-wide across all 30 days):
  IPA      (ipa gift basket, ipa beer gift baskets)     52 impr,  6 clicks, $56.39, 0.00 conv
  vodka    (vodka gift basket/baskets)                 225 impr, 16 clicks, $53.32, 0.00 conv
  golf     (golf gift baskets, golf gift baskets for men) 49 impr,  7 clicks, $35.32, 0.00 conv
  tequila  (tequila gift basket)                        144 impr,  9 clicks, $25.81, 0.00 conv
  THEME TOTAL: 470 impr, 38 clicks, $170.84, ZERO conversions

As a THEME this clears the $120 break-even-CPA floor. NO INDIVIDUAL TERM DOES — which is why this is grouped.

WHY IT IS A REAL SIGNAL AND NOT NOISE — the neighbouring flavours all convert:
  beer (all):    $296.76 -> 4.33 conv, 2.75 ROAS
  whiskey (all): $148.60 -> 5.31 conv, 7.03 ROAS
  gin:            $25.18 -> 1.00 conv, 3.90 ROAS
IPA, vodka, golf and tequila are at ZERO across 38 clicks while beer, whiskey and gin convert. That is a flavour-level/catalog signal.

NOTE ON SAMPLE SIZE: 6-16 clicks per flavour is thin. The SOP says check feed quality, price competitiveness, seasonality, sample size and elapsed time before excluding, and to isolate at low bids rather than killing. If the catalog DOES carry these, isolating them in a low-bid product group beats a negative.

SEPARATELY — ZERO negatives qualify individually in this account this week. The largest of 72 script candidates is $38.57 against a $120 floor, and 19 of 72 ($296.50, 27%) are FALSE POSITIVES that convert elsewhere (see W1012-23). The script''s SpendFloor is $8, fifteen times too loose here.', NULL, '2026-10-16'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.197Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414057613563');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-24] Hold search-dsa tROAS at 3.00 — do not change, re-read Oct 19', 'Account: The Brobasket (449-182-0083)
Campaign: search - dsa - tROAS 300%
Setting: Target ROAS
STAYS: 3.00 (300%) — NO CHANGE this window. Deliberate.
Also: NO budget change. Stays $125.00/day.

WHAT HAPPENED — it was scaled ~3x and bought volume at the cost of efficiency:
  Cost  $1,187.49 -> $3,409.10  (+187%)
  Conv      28.98 -> 48.98      (+69%)
  ROAS       4.54 -> 2.69       (-41%)
  CPA     $40.98  -> $69.60     (+70%)
  CVR      5.70%  -> 3.98%

It is now BELOW its own 3.00 target and below the 2.75 account target — though still well above the 1.70 break-even, so it is not a fire.

WHY NO CHANGE:
1. ONE CHANGE PER CAMPAIGN PER WINDOW. The 3x budget increase WAS the change. It is still inside the learning period from it — touching the target now makes the read worthless.
2. NO BUDGET INCREASE EITHER: 12.05% of IS lost to budget but 81.25% lost to RANK, at only 9.99% SearchIS. Rank loss is a bid/quality problem — more budget will not spend. And a campaign missing its own target does not get fed.

Gate check: 48.98 conv/30d clears the 30+ threshold for tROAS. The strategy is correct.

RE-READ 2026-10-19 with a full 2-week window on the budget change. Read conversions/revenue AND the ROAS/CPA trade-off together, never a day or two. If ROAS has stabilised at 2.6-2.7 with the higher volume, that may simply be the honest price of the extra conversions — decide then whether 49 conv at 2.69 beats 29 conv at 4.54.', NULL, '2026-10-19'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.177Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414058138274');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-25] Hold pmax tROAS at 3.65 — it is fixing itself', 'Account: The Brobasket (449-182-0083)
Campaign: pmax - feed & brand shopping
Setting: Target ROAS
STAYS: 3.65 (365%) — NO CHANGE. Deliberate.
Also: NO budget change. Stays $220.00/day.

WHY: this is the one campaign in the account that IMPROVED, on flat spend.
  Cost  $2,449.42 -> $2,509.26  (flat)
  Conv      37.59 -> 39.44      (+5%)
  ROAS       2.94 -> 3.25       (+11%)
  CPA     $65.16  -> $63.63     (-2%)

It is moving toward its 3.65 target on its own. DO NOT TOUCH A CAMPAIGN THAT IS FIXING ITSELF.

No budget change either: 0.00% of impression share lost to budget, 62.58% lost to RANK, and it is only spending $83.64/day of its $220/day cap. There is $136/day of unused headroom already — more budget is meaningless.

WATCH ITEM: 39.44 conv/30d is still UNDER PMax''s 50 conv/month threshold, so it runs rougher than it should. Across all three accounts, only Booze Finders'' pmax-feedonly (58 conv) clears 50. PMax consolidation remains the standing theme from Q3.

CAVEAT ON THE IS FIGURE: PMax search_impression_share is unreliable in the Google Ads API — the script reported 22% for ''pmax - brand'' while Google''s own UI said under 10%. The 37.42% SearchIS here should be read in the UI before acting on it.

Gate check: 39.44 conv/30d clears the 30+ threshold for tROAS.', NULL, '2026-10-19'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.186Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414274171377');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-27] Check Merchant Center Diagnostics — feed is not in the data pipeline', 'Account: The Brobasket (449-182-0083)
Merchant Center is NOT in the export script and there is no API for it. This is manual every week.

WHERE: Merchant Center -> Products -> Diagnostics. Check item-level issues and disapprovals.
THEN: paste the output into the Google Ads project chat and I will triage it.

WHY IT MATTERS MORE THAN USUAL THIS WEEK: shopping - catch-all lost 61% of its conversions with FLAT CPC (see W1012-26). A feed problem is one of the few things that produces that shape — disapprovals silently remove your best SKUs from the auction while the remaining ones keep taking clicks.

90-DAY FEED HEALTH FROM THE DATA:
  495 SKUs seen in shopping_performance_view
  122 SKUs converted (the ones carrying the account)
  233 SKUs took spend with NO conversions — isolate at low bids before killing
  141 SKUs served but got ZERO clicks — title/image/price problem

STILL OPEN FROM Q3 (2026-10-06), unresolved:
- All 424 served feed titles end in the SAME 93-character boilerplate tail. That wastes the most valuable real estate in a Shopping listing and makes every title look identical in the SERP.
- THE ENTIRE SPIRITS CATALOG IS UNADVERTISED: /whiskey 105 live / 1 served; /bourbon 51 live / 0 served; /tequila 36 live / 0 served; /engravings 99 live / 1 served.
- Catalog coverage is 23% (182 of 784 live products served in 90 days) — the worst of the three brands.

OPEN QUESTION FROM Q3, STILL UNANSWERED: is the spirits exclusion DELIBERATE (margin, adult-signature requirements, shipping law) or ACCIDENTAL? This changes the whole growth plan for the account and nobody has answered it. If accidental, it is the single largest untapped inventory across the portfolio.', NULL, '2026-10-16'::date, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.154Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219414057883987');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[W1012-26] Diagnose the shopping-catch-all CVR collapse (3.33% → 2.16% at flat CPC)', 'Account: The Brobasket (449-182-0083)
Campaign: shopping - catch-all - Max Con Value
This is the ROOT-CAUSE task behind the account''s -17% revenue. Do this before any budget decision on the campaign (see W1012-21).

THE SHAPE OF THE PROBLEM:
  CVR     3.33% -> 2.16%  (-35%)
  AvgCPC  $2.57 -> $2.52  (FLAT)
  Conv   112.53 -> 43.78  (-61%)
  ROAS     2.51 -> 1.73   (-31%, now $0.03 above the 1.70 break-even)

FLAT CPC WITH COLLAPSING CVR RULES OUT BIDDING. You are paying the same per click and getting far fewer sales from them. That is a traffic-quality, product-mix, feed, or landing-page problem.

DIAGNOSE IN AUSTIN''S ORDER — do not skip ahead:
1. CONVERSION TRACKING — first and most important. A 61% conversion drop at flat CPC is exactly what a broken or partially-broken tag looks like. Verify the purchase tag fires, check for duplicate/missing conversion actions, confirm conversion value is still passing. If tracking broke, everything below is noise.
2. STRUCTURE — did product groups or price-band ad groups change inside the window? The budget was also cut mid-window (from ~$290/day to $150/day), which reshuffles which products get served.
3. OFFER / LANDING PAGE — price changes, stock-outs, shipping-cost changes, checkout friction.
4. FEED — check Merchant Center Diagnostics (task W1012-27). 233 SKUs took spend with no conversions and 141 SKUs got zero clicks over 90d. A feed problem is one of the few things that produces this exact shape.
5. KEYWORDS / MATCH TYPES / NEGATIVES — see W1012-23 routing work.
6. AD COPY, then 7. BIDDING / BUDGET — last, not first.

SUPPORTING CONTEXT: account AOV actually ROSE 7% ($186.59 -> $199.07), so this is not a cheap-order problem. It is a volume-of-buyers problem.', NULL, '2026-10-15'::date, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T15:01:56.179Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219413898070772');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Monthly: Profit & Debt Model check (1st business day)', 'Model: GTG_Profit_and_Debt_Model (Google Sheet — replaces both links below). Paste the new Drive link here.

What it covers: all GTG stores (BroBasket, BoozeFinders, Bounty, other channels) Oct 2026 – Dec 2027, card-level debt from restated 30 Sep balances ($285,907), Profit First holdbacks, and an SBA 7(a) refi toggle. Budget locked 8 Oct 2026.

Monthly check — ~20 min
    Finaloop → Banks: every GTG card Connected and reconciled (watch Chase 0465 / 7746 / 8934).
    Run last month''s P&L. Fill the Actuals row: net sales by store, gross profit, S&M, fixed opex, interest.
    Add back one-offs (Q4 prebuy, catch-up bills, Bev Connect GLS freight) and log them.
    Ending debt = card statement balances + VCCU (+ SBA). Not the Finaloop balance sheet.
    Read Monthly Review. ''Off plan'' two months running = update Inputs.
    Judge Dec–Feb as one block (cash-basis cost lag).

Shortcut: in the BroBasket Claude project, say "run the monthly model check for <month>".

Previous versions (archived)
    https://docs.google.com/spreadsheets/d/1g4XMQEdMbj8JcvXawklX_0pOSGtc62tjl1r2fUaFH6Q/edit?usp=sharing
    https://docs.google.com/spreadsheets/d/1PTryZL84w-4swDznvWBi8laVZCPaeHWiz5NAKRsogtU/edit?usp=sharing
    https://claude.ai/chat/2162d3d5-5c8b-4258-92dd-0a4bf5ab82df · https://claude.ai/chat/c2a79413-baa1-415f-ae80-6e897f2ed4c2
https://claude.ai/chat/2162d3d5-5c8b-4258-92dd-0a4bf5ab82df', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-02'::date, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-03T23:26:23.930Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218157991364453');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'P&L Review + Shipping Transactions ', 'https://docs.google.com/spreadsheets/d/1EGFZMWRBvo9nhvnbuRa9QIc6WIO1OE8nthmC-YcDXpo/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1wWJPg9mJZpKERCPR-WtrdCW9hhCnCZIZ2OfY36dNItY/edit?usp=sharing

Data needed
    Orion Shipping PDF Invoice
    Shopify Shipping by lable weekly export
    GLS Weekly Shipments report
    Shopify Matrixify order report for the week 

P&L + Profitability 
Gros Profit Margin Target = 52.5%
https://docs.google.com/spreadsheets/d/18wvjkSWEihdyqwxfAc4QH4eEskTrXEayCZyp0bjsfoI/edit?usp=sharing
https://docs.google.com/spreadsheets/d/15TfIamy9UHFH6vbdvB16IMn25TfKpuG8J6VkYt2ZPlI/edit?usp=sharing', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), '2026-10-28'::date, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T21:39:30.960Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219595057740089');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-20] Defend brand hard through December - watch the $45 CPA trigger', 'Hold 95% IS / 90% top IS on search - brand through the peak. BroCrates sits in 83.6% of your brand auctions with a 25.5% position-above rate.

TRIGGER: if brand CPA clears $45, bring the tImpShare target down.

Benchmark worth knowing: spoonfulofcomfort.com leaks its own campaign naming in tracked ad URLs - ''Search | BOF | BRD | Conversion | Branded | eCPC (<$1.20)''. A defended brand term in this category should cost under $1.20. You are at a $2.75 max CPC. Your brand name costs $1.30-$2.50/click while your main category term ''gift baskets for men'' costs $0.45 - that 3.5x spread is the cost of the name collision.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-05'::date, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.667Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238704542413');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-14] Add /engravings (99 SKUs) as its own Shopping product group at a low bid', '99 live engraved liquor bottles, 1 served, $8.99 of spend in 90 days.

This is the strongest expansion case in the account: engraved bottles are a gift product not a liquor-store product, they carry personalization margin, and they are what your best-performing headline (''Personalized Gift Baskets'', 6.7% conv/impr) already promises. bottleengraving.com showed up in the Jan-Apr Auction Insights at 49.18% absolute top impression rate - somebody is monetising this.

Smallest-cost test of the biggest coverage gap. Read 2026-11-10. Success: any conversion at ROAS > 1.70.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-03'::date, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.604Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238974226525');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-18] Export fresh Auction Insights segmented by month and device', 'Current exports are dated 2026-09-02 (Aug 3 - Sep 1 window) - a month stale, unsegmented, and filed in folder 1--o6VfqKNJ9zwqaDDZN1458OK-1oiXd_ rather than the Marketing folder.

Export segmented by month AND device this time, and file it in the Marketing folder so the biweekly check finds it.

Watch items: brocrates.com at 75.07% brand IS / 83.56% overlap / 25.50% position above. Non-brand top-of-page slipped 83.63% -> 78.81% between Jan-Apr and Aug-Sep.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-14'::date, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.594Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238973799024');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-22] Start the 11,559-keyword cleanup in the quiet week after Christmas', '11,559 keywords with 6 serving (0.1%). 8,700 enabled. 6,991 ad assets with zero graded.

No meaningful ad test is readable until this structure shrinks. This is a JANUARY job, not a December one - do not touch it during the peak.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-29'::date, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.606Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238974152907');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-16] Add Q4 promotion asset + audit extensions against the baseline', 'RSA_Assets exports HEADLINE and DESCRIPTION only - the script does not pull extensions (campaign_asset / asset_set). So the baseline could not be audited from data and must be done by hand.

Baseline to check: 4 sitelinks WITH descriptions, callouts, >=3 structured snippets, image asset, promotion asset.

Add now: promotion asset carrying the holiday shipping cutoff date (a real promotion with a real deadline).

Also confirm account-level automated assets are mostly OFF - keep only SELLER RATINGS and LONGER AD HEADLINES. Path: Ads & assets > Assets > Automated assets > Account-level.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-07'::date, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.606Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238753375397');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-19] Ramp budget with demand - 10-20% steps through Nov into Dec', 'December volume on ''gift baskets'' is 125,900 vs 31,977 in October - 3.9x. Budget must ramp, not sit flat.

Current run rate $414.71/day against a $493/day Config budget - 16% UNDER. You have headroom before you need more money.

Lift shopping - catch-all and pmax - feed in 10-20% steps. NEVER change targets and budgets in the same week - one change per campaign per window or the read is worthless.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-21'::date, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.638Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238974226589');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-17] Cap shopping - catch-all at tROAS 240% (only after the title rewrite has run 2 weeks)', 'Biggest spender at $18,487/90d, 2.36 ROAS; Last30 1.84, down from 2.75 Prev30, conversions -31% MoM. MaxValue with no tROAS cap is uncapped bidding on a feed whose titles don''t match search intent.

240% is just above the 2.36 ninety-day actual - within the <=20% change rule.

SEQUENCING: do NOT run this in the same window as [Q4-03] the title rewrite. Titles first - they change what the bidding is bidding on. Read 2026-11-03. Success: ROAS >= 2.60, conv down less than 15%.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-03'::date, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.600Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238973573005');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-05] Resolve the audience question - Q_Audiences is empty', 'Q_Audiences returns ZERO rows for all three accounts. Either nothing is attached, or the script query is broken.

Check in the UI:
- Audiences, keywords and content > Audiences on each of the 6 campaigns
- Tools > Shared library > Audience manager for list sizes and membership status
- Confirm Optimize Targeting is OFF on any remarketing ad group (left on, Google ignores your list entirely)

Remarketing list refresh is manual with no API and there is NO record of one in the last three monthly/weekly docs - treat as overdue. With 580 conv/90d this account has the volume for a remarketing layer and appears to run none. This is the biggest un-evidenced gap in the checklist.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.797Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238704573230');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-07] Add 2 keywords: angels envy, beer bouquet for men', 'Both converting in the last 30 days and not yet keywords.
- angels envy: 111 impr, 2 clicks, $3.52, 1 conv, $220.82, 62.73 ROAS
- beer bouquet for men: 30 impr, 1 click, $10.35, 0.33 conv, $59.91, 5.79 ROAS

Exact + phrase only. No broad - broad requires the campaign to be optimised, on smart bidding, and at goal.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.707Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238941200813');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-12] Cut brand headlines 30 -> 8, pin Personalized Gift Baskets, pause Ad 1', '1,302 brand impressions / 30 headlines = ~43 impressions per headline per month. No test is readable at that dilution.

KEEP 8: The BroBasket Official Site (24.00 conv / 706 impr) | The Best Gift Baskets For Men (12.67/449) | Shop BroBasket (9.33/233) | Manly Gift Basket (8.00/284) | Personalized Gift Baskets (4.50/67) | {KeyWord:Curated Gifts For Any Occasion} (4.33/215) | Alcohol Gift Baskets Delivered (1.50/30) | Office Holiday Gift Baskets (keep through Q4).

DROP the zero-conversion fillers: The Perfect Business Gift, Crafted With Taste, Exceptional Gifts, Get Him What He Really Wants, Customizable Gift Sets.

PIN ''Personalized Gift Baskets'' to H1/H2 - 4.50 conv on 67 impressions is 6.7% conv-per-impression, the best rate in the set, and it is being starved. It also matches /engraving + /engravings (309 live products, no ad coverage).

PAUSE Ad 1: Ad 2 holds 24 of 29 conversions at ~8.5% CVR vs Ad 1''s ~2.9%.

PerformanceLabel is NOT_APPLICABLE on all 34 assets - Google will not grade at this volume. Ad Strength is not a performance metric. Ignore it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-30'::date, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.639Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238973802874');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-21] FREEZE all structural changes from Dec 1', 'No new campaigns, no target changes, no structural work inside the peak. Monitor and fund only.

Anything not shipped by Nov 30 waits for January.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-01'::date, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.631Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219239153626341');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-15] DECISION: is the spirits catalog excluded from the feed deliberately?', '276 live bottles (208 Alcohol + 55 Beer + 13 Wine), ONE served, $8.99 of 90-day spend. Includes Old Forester Birthday Bourbon $999.95, Opus One $689.95, Dom Perignon $499.95, Johnnie Walker Blue $429.95, Don Julio 1942 $369.95, Clase Azul Reposado $339.95, Lagavulin 16yr $224.95, Macallan 12yr $159.95.

Collections with live products and ZERO ad coverage: /whiskey 105, /bourbon 51, /tequila 36, /scotch 19, /vodka 13, /liqueur 9, /rum 8, /wine 7, /gin 6, /champagne 6, /mini-bottles 75, /craft-beer 22, /imported-beer 21, /domestic-beer 7.

Is this deliberate (margin on a resold bottle, adult-signature fulfilment cost, MC alcohol policy) or accidental? Booze Finders serves 63 of its 196 live Alcohol SKUs from the same MCC, so the alcohol policy is clearly surmountable.

Write the answer down. If margin: close the item. If accident: this is the largest untapped inventory in the portfolio.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-07'::date, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.603Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238704573091');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[Q4-13] Publish /collections/christmas-gift-baskets as a real seasonal page', '''christmas gift baskets'' = KD 3, and BroBasket does not rank at all. Volume: 4,103 Oct -> 16,311 Nov -> 55,220 Dec. A page published NOW can plausibly rank for the December peak - this is the one SEO item with a real Q4 payoff.

giftboxloveco.com (DR 5, 623 organic visits/mo) is already running ads to its /collections/christmas page in early October. You are absent.

Then point a seasonal ad group at it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:24:48.907Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219239056752974');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P3] Shrink the keyword corpus - 11,559 keywords, 6 serving', 'BroBasket. Project, not a one-session task.

Current state: 11,559 non-removed keywords, 8,700 ENABLED, 6 serving in 30 days (0.1%). All six that serve are brand terms. 6,991 ad assets, 0 graded.

FROM: 8,700 enabled keywords producing no data
TO: one non-brand Search campaign built from the ~25 terms DSA and Shopping have already proven, plus the brand campaign. Remove the rest.

Seed list from Keyword_Candidates and DSA_Terms (all already converting):
alcohol gift baskets (3.86), alcohol gifts (64.51), whiskey gift basket (16.79/21.25), liquor gift sets (7.32), send liquor gift (6.74), alcohol gift delivery (5.55), liquor gifts delivered (27.49), whiskey basket gift (154.84), bourbon gift basket (69.24), gin sampler gift set (116.45), vodka gift baskets (9.98), beer delivery gift (342.40), moscow mule gift set (79.86), birthday gifts for him (87.31), beer gifts (41.78), whiskey sampler gift set (40.23), beer sampler gift (92.26), gift baskets for men (6.12), margarita gift basket (6.87), crown royal gift basket (16.11), johnnie walker gift set (32.78), gin and tonic gift set (19.25), gift boxes for men (6.97), dude baskets (20.08), candy gift basket (24.17)
Flagged NOT yet a keyword: angels envy (62.73), beer bouquet for men (5.79)

Why it matters: no readable ad test, no Quality Score diagnosis and no ad-asset grading exists while 8,700 enabled keywords sit dormant. Items 2 and 3 of the diagnostic order (structure, then keywords/match types) cannot be assessed until this is cut.
Start exact + phrase only. Broad match only once the campaign is optimised, on smart bidding and at goal.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-30'::date, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:09:00.668Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238652573773');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[GAds P3] Re-split the $200+ Shopping price band into its own campaign - BEFORE November', 'BroBasket. New campaign.
FROM: all price bands inside shopping - catch-all - MaxValue (2.28 ROAS)
TO: $200+ band in its own Standard Shopping campaign with its own budget and target

Evidence from LastYearMonth (2025-08-31 to 2025-09-29), when the bands ran separately:
- Shopping - $200 and Over: $413.96, 5.87 conv, 4.14 ROAS
- Shopping - Top Performers: $2,972.95, 50.35 conv, 2.70 ROAS
- shopping - catch-all - MaxValue: $4,326.77, 92.90 conv, 2.70 ROAS
- Shopping - $50 and Under: $269.01, 5.89 conv, 1.31 ROAS
That''s a 3x spread across price bands on the same catalogue. All three band campaigns are now PAUSED and everything sits in one catch-all at 2.28.

AOV is $194.65 and up 36.4% YoY - the high band is where the margin is.
TIMING: do this in October. Do NOT start a new learning period inside Black Friday / Cyber Monday.
Rule: keep winners where they are, move underperformers out into their own campaign.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:09:00.680Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219238843109205');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[P1] Add 50 ad-group negatives to shopping - catch-all - MaxValue', 'CHANGE: Campaign shopping - catch-all - MaxValue → add 50 negative keywords AT AD-GROUP LEVEL. Recovers $774.54/30d.

WHY THIS CAMPAIGN: $5,826 of 30d spend at 1.70 ROAS — EXACTLY break-even, so currently zero contribution margin. 1.12 ROAS month-to-date. Largest line item across all three accounts. Conversions halved (104.9 → 52.4) on 22% less spend.

AD GROUP LEVEL, NOT CAMPAIGN LEVEL. Five of these terms are among the account''s best earners and are only wasting money in the wrong price band. A campaign-level negative on [bourbon basket] would kill $204 of revenue to save $63 of spend.

-- AD GROUP: $100 - $150 --
[whiskey basket] $30.29 | [ipa gift basket] $28.91 | [gift baskets for men] $24.06 (CONVERTS $183 elsewhere) | [next day birthday gift delivery] $23.95 | [beer gifts for men] $19.24 | [gifts for men] $15.66 | [beef jerky gift basket] $14.55 | [bourbon gift set] $10.08 | [liquor gift basket delivery] $9.58

-- AD GROUP: $100-149 --
[get well gift baskets for men] $21.14 | [gift baskets for men] $19.77 (CONVERTS $183) | [beer gifts for men] $16.75 | [gift box for men] $13.90 | [crown royal gift set] $12.63 | [gifts for men] $10.17 | [next day birthday gift delivery] $9.65 | [bloody mary gift basket] $8.19 | [gift basket for men] $8.15

-- AD GROUP: $150 - $200 --
[alcohol gift baskets] $24.27 (CONVERTS $85) | [whiskey gift baskets] $21.45 | [retirement gifts for men] $13.76 | [bourbon basket] $13.61 (CONVERTS $204) | [espresso martini gift basket] $10.99

-- AD GROUP: $200 - $300 --
[bourbon gift set] $16.32 | [bourbon basket] $13.08 (CONVERTS $204) | [bourbon gifts for men] $12.65

-- AD GROUP: $250 and over --
[bourbon basket] $28.01 (CONVERTS $204) | [tequila basket] $16.81

-- AD GROUP: $50 - $100 --
[ipa beer gift baskets] $22.08 | [vodka gift basket] $18.84 | [gift baskets for men] $16.94 (CONVERTS $183) | [alcohol gift baskets] $13.23 (CONVERTS $85) | [alcohol baskets] $13.19 | [guinness gift basket] $12.00 | [birthday baskets for him] $10.42 | [gifts to send men at work] $9.45 | [beer gift baskets] $8.49 (CONVERTS $234)

-- AD GROUP: Top Performer --
[golf gift baskets] $30.05 | [bourbon gift baskets] $24.87 | [gift basket for men] $14.67 | [birthday gifts for him] $14.56 (CONVERTS $394) | [alcohol gift baskets] $14.48 (CONVERTS $85) | [birthday gift for dad] $14.22 | [gift baskets] $13.94 | [gift baskets with alcohol] $10.48 | [gift baskets for golfers] $10.25 | [golf gift baskets for men] $9.48 | [beer gifts for men] $8.65 | [overnight gifts for men] $8.52 | [brocrates] $8.11

STRUCTURE BEFORE BIDDING. On $5,826 this lifts ROAS from 1.70 to roughly 1.98 with no bid change and no volume loss. DO NOT also set a tROAS target this week — one change per campaign per window.

NEXT WINDOW (2026-10-12): if ROAS is still below 2.20, convert MAXIMIZE_CONVERSION_VALUE → Target ROAS at 190% (a +12% step off the 1.70 average), hold two weeks, then 215%, then 245%. Do NOT jump to the 275% account target — that is +62% and will crater Q4 volume.

Also worth noting: ad groups "$100 - $150" and "$100-149" are duplicates and both waste money on the same terms. Flag for the monthly structure review.

Log to test tracker: shopping - catch-all - MaxValue — Applied 50 ad-group negatives ($775/30d waste), 10/5–10/19

Doc: https://docs.google.com/document/d/1whGHMSJZDfVwc477A7h5pLw_HznLpQblJmZD9ZG83X4/edit', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-05T14:52:47.076Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219173853658107');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), '[P2] Add 13 ad-group negatives to search - dsa - tROAS 300%', 'CHANGE: Campaign search - dsa - tROAS 300% → add 13 negative keywords AT AD-GROUP LEVEL. Recovers $153.51/30d.

-- AD GROUP: dsa | alcohol-gift-baskets --
[gift baskets with alcohol] $28.03 | [send alcohol gift] $11.80 | [alcohol gift basket] $10.20 | [titos gift basket] $9.33

-- AD GROUP: dsa | beer-gifts-for-men --
[brocrates] $10.07 | [beer gift baskets] $8.83 (CONVERTS $234 elsewhere — ad-group level only)

-- AD GROUP: dsa | product gift pages --
[brocrates] $10.58

-- AD GROUP: dsa | whiskey-and-bourbon-gift-sets --
[bourbon gift basket] $16.02 | [bourbon gift baskets] $12.45 | [bourbon gift sets] $10.35 | [bourbon gifts for men] $9.18 | [bourbon basket] $8.42 (CONVERTS $204 elsewhere — ad-group level only) | [whiskey gifts for men] $8.25

CONTEXT: this campaign grew spend 91% ($1,448 → $2,765) with ROAS decaying 3.71 → 3.02. Still at its 300% target and well above the 1.70 break-even, so the growth is fine — but marginal return is thinning, which is why the negatives matter and why the tROAS target should NOT be lowered this week.

DO NOT lower tROAS 300% → 255% in the same window as the Shopping fix. Two simultaneous changes in one account make both reads ambiguous. Revisit 2026-10-12.

Doc: https://docs.google.com/document/d/1whGHMSJZDfVwc477A7h5pLw_HznLpQblJmZD9ZG83X4/edit', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-05T14:52:47.063Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219173524297636');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Wine cooler box?', 'https://whisperkool.com/', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-23T22:06:17.965Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218797385276834');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Finish Pinterest Imports', 'https://www.pinterest.com/settings/import/

https://claude.ai/cowork/cse_01AjKAV52JF4N1whqfus3WAS

', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T22:02:43.873Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218525830976643');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Cost to launch mancrates ', 'https://claude.ai/chat/5f075122-7fa4-4da8-9dc7-9441ace60d16

Second claude chat 
https://claude.ai/cowork/cse_01WYVefgKLj9Rubv8wM2xhFw

Looks to be around 200+/- orders to break even - not terible 


https://docs.google.com/spreadsheets/d/1_7UisHBxwtUvyjo78APkIRKtFe-qlu4_BnWrEkXUC7M/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-24T15:14:53.835Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213778736283451');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Lower search - dsa tROAS 365% → 310%', 'Campaign: search - dsa - tROAS 365%
Setting: Target ROAS
Change: 365% → 310% (−15%)

Why: Best non-brand efficiency in the account (ROAS 3.76, up from 3.11) and it is SHRINKING — cost −46.2% vs Prev30 ($2,044.79 → $1,099.33). 90.01% of impression share lost to rank, 0% to budget. The target is choking it.

CAUTION: 23.98 conv/30d puts this UNDER the 30-conversion gate for tROAS. The target is running on thin data. Treat the read as provisional and do not stack another change on it.

Within the 10–20% limit. Hold 1–2 weeks. Re-read 28 Sept.
Log to test tracker as: search - dsa — Lowered tROAS 365% → 310%, 9/14–9/28', NULL, '2026-09-15'::date, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.584Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462348754352');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Check Merchant Center Diagnostics for disapprovals', 'Not in the script export — no API exists. Manual check in Merchant Center → Diagnostics.

Look for: item disapprovals, policy warnings, and item-level issues, especially anything affecting top sellers ahead of Q4.

Context from the 90-day data: 424 SKUs took zero clicks and 443 spent with no conversion (1,001 SKUs seen). That pattern usually points at feed quality, titles or price competitiveness rather than bidding.

Paste the diagnostics output into the Google Ads project and Claude will triage it.', NULL, NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.531Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462270116696');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Fix duplicate/overlapping price-band ad groups in shopping - catch-all', 'Campaign: shopping - catch-all - tROAS 300%

This is the root cause of $830.49 (58%) of the account''s zero-conversion spend. Do NOT solve it with negatives — the wasting terms are core products (liquor gift baskets $115.99, bourbon gift basket $101.36, scotch gift basket $94.96, tequila gift basket $46.26). "bourbon gift baskets" plural converts at 9.60 ROAS while "bourbon gift basket" singular wastes across 6 ad groups. Same intent, different destination, opposite outcome.

WASTE BY AD GROUP (30d, zero conversions):
  Top Performer     24 terms, 96 clicks, $359.88, $3.75 CPC
  $100-149          13 terms, 41 clicks, $256.58, $6.26 CPC
  $150 - $200        7 terms, 19 clicks, $194.09, $10.22 CPC
  $100 - $150       12 terms, 31 clicks, $177.45, $5.72 CPC
  $250 and over      6 terms,  7 clicks, $155.61, $22.23 CPC
  $200 - $300        4 terms, 18 clicks, $104.97, $5.83 CPC
  $50 - $100         8 terms, 20 clicks,  $84.51, $4.23 CPC

CHANGES:
1. Merge "$100-149" INTO "$100 - $150" — same band entered twice, $434.03 combined waste, products bidding against themselves.
2. Resolve the "$200 - $300" / "$250 and over" overlap — pick one boundary.
3. Isolate "$250 and over" at low bids (do not delete). 7 clicks at $22.23 CPC, zero conversions — the most expensive clicks in the account closing nothing.

Do NOT change the bid target on this campaign in the same window — it would corrupt the read.
Re-read negatives after 2 weeks; much of the $830 should resolve once terms route to one destination.', NULL, '2026-09-18'::date, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.529Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462179249733');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Add ~$534/mo of campaign-level negatives (5 themes)', 'Campaign: shopping - catch-all - tROAS 300% (plus search - dsa where noted)
Match type: EXACT, campaign-level
Recoverable: ~$533.86/30d (~$6,400/yr)

THEME A — Competitor names ($37.57):
  man crates | mancrates website | brocrates

THEME B — Off-category product ($62.71):
  beef jerky gift basket | golf gift basket | wine gift baskets | pinot noir gift basket | food gifts for men

THEME C — Generic head terms ($301.36 — biggest single bucket, 21% of all waste):
  gift baskets for men ($220.88 across 5 ad groups, 39 clicks, 0 conv) | gifts for men (3,309 impr) | gift baskets for him | gift baskets | crate gifts

THEME D — Corporate / bulk gifting ($78.00):
  gift basket for male boss | executive gift baskets | high end gift baskets for clients | high end gift baskets | gifts to send men at work | customized gift baskets for him

THEME E — Occasion mismatch ($54.22):
  get well gift baskets for men | get well baskets for men | irish gift baskets

=== DO NOT ADD ===
• "thebrobasket" ($9.57) — YOUR OWN BRAND. Script flagged it on 6 clicks with 0 conv. Adding it would be an own goal.
• Birthday terms ($29.99) — "birthday gifts for him" converts at 7.10 ROAS.
• Candy terms ($18.77) — "candy gift basket" and "sour candy box" convert; "candy gift box"/"candy gift baskets" waste. Ambiguous.
• The $830.49 price-band bucket — see the separate structure task.', NULL, '2026-09-16'::date, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.533Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462348146850');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Harvest 3 converting terms into Search (exact + phrase)', 'Source: Shopping search terms (cannot add keywords to Shopping — harvest into Search)
Destination: search - dsa - tROAS 365%, as a new ad group — or a new Search campaign
Match types: EXACT + PHRASE. NO BROAD (campaign is under the 30-conv gate at 23.98).

  beer bouquet for men — 54 impr, 1.00 conv, $255.81 rev, 501.59 ROAS
  candy gift basket    — 48 impr, 1.00 conv,  $62.10 rev,   6.88 ROAS
  sour candy box       — 45 impr, 1.00 conv,  $49.71 rev,   7.05 ROAS

Skipped: "margarita gift basket with tequila" (46 impr but 0.49 conv — under the 1-conversion bar).

NOTE: two of the three are candy, not alcohol. That is a non-alcohol product line pulling its own converting demand — give it a dedicated ad group rather than burying it in the alcohol structure.', NULL, '2026-09-17'::date, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.532Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462270205716');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Lower pmax - feed tROAS 365% → 330%', 'Campaign: pmax - feed - tROAS 365%
Setting: Target ROAS
Change: 365% → 330% (−9.6%)

Why: ROAS 2.98 vs 2.75 target (at goal). 0% IS lost to budget, 67.43% lost to rank — more budget will not spend, only a lower target will. Cost +182.8% and revenue +136.6% vs Prev30, so it absorbs scale well.

Gate check: 37.19 conv/30d — clears the 30+ threshold, tROAS is legitimate.

Hold 1–2 weeks. One change per campaign per window. Re-read 28 Sept.
Log to test tracker as: pmax - feed — Lowered tROAS 365% → 330%, 9/14–9/28', NULL, '2026-09-15'::date, 51, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.525Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462156398025');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Investigate brand ROAS decline (13.99 → 9.59 → 4.48 MTD)', 'INVESTIGATION, not a change. Two brand campaigns are both rising in cost while brand revenue falls.

search - brand:        cost +30.5% ($486.05 → $634.40), revenue −10.5% ($6,798.19 → $6,083.33)
                       ROAS 13.99 → 9.59 (Last30) → 4.48 (MTD)
                       Search IS 88.56%, Top IS 85.05%, 11.44% lost to rank, 0% to budget
pmax - brand - tROAS 500%: cost +98.0% ($541.41 → $1,072.03), ROAS 2.89 — 58% of its own 500% target
                       20.97 conv/30d — UNDER the 30-conv gate for tROAS

Hypothesis: pmax - brand is cannibalising search - brand. PMax brand spend doubled over exactly the window that brand search ROAS collapsed.

Also in play: BroCrates (brocrates.com/.ca) sits in 83.6% of BroBasket brand auctions at 75% IS and outranks BroBasket 25.5% of the time. Standing brand-defence issue.

To check: brand search term overlap between the two campaigns; whether PMax brand is serving on core brand queries. Candidate test for next window — pause pmax - brand and watch whether search - brand ROAS recovers. Do not run it this week alongside the other changes.', NULL, '2026-09-21'::date, 52, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.537Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462348845953');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Diagnose or pause search - product AI MAX ($0 spend, 0 impressions)', 'Campaign: search - product AI MAX
Status: ENABLED
Daily budget: $100/day
Cost 30d: $0.00 — Impressions: 0 — Clicks: 0

It has not served once in 30 days while holding $100/day of nominal budget. Either mis-targeted, awaiting approval, or never properly launched.

Action: check campaign status, targeting, ad approval and keyword/asset state in the UI. If it is not going to run, pause it so the budget line is honest.', NULL, '2026-09-16'::date, 53, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:18.525Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218462192788346');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'BroBasket — Diagnose ''whiskey gift basket'': 26 clicks, $92.64, zero conversions', 'NOT A NEGATIVE — a diagnostic. Do not add this term to any negative list.

TERM: whiskey gift basket
DATA (30d): 421 impressions, 26 clicks, $92.64 spend, ZERO conversions, across FIVE ad groups (Top Performer $22, $100 - $150 $21, $150 - $200 $20, $100-149 $11, dsa | whiskey-and-bourbon-gift-sets $11)

WHY IT MATTERS: this should be BroBasket''s single best query. Twenty-six clicks with no conversion — while bourbon gift basket converts at 10x in the $200 - $300 ad group — points at WHICH PRODUCTS ARE SERVING AND AT WHAT PRICE, not at the query itself.

Also check: scotch gift basket — $94.96, 41 impr, only 3 clicks (very high CPC, almost no volume). Do you have scotch inventory at a competitive price?

Austin''s order says diagnose the offer / landing page / feed before reaching for a negative. Negativing your bullseye keyword is the wrong move.

CHECK: which SKUs serve for this query, their price band vs competitors, feed title quality, and the landing page they hit.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 54, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-08T18:56:28.257Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218286725043966');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Bulk-remove non-serving keywords — 8,700 enabled, 6 serving', '11,559 non-removed keywords in the account. SIX got an impression in 30 days. 0.1%.

It isn''t costing money directly, but:
• It makes the account unreadable
• It''s why 6,991 ad group ad assets have ZERO graded (no LOW/GOOD/BEST labels anywhere). The course''s math: an asset needs ~2,000 impressions in top positions over 30 days to earn a rating. With 6 keywords serving, nothing can accumulate enough data. YOU CANNOT RUN A MEANINGFUL AD TEST IN THIS ACCOUNT until the structure shrinks.

Filter to keywords in paused/removed campaigns and ad groups first — those are safe. Then non-serving enabled keywords with zero impressions over 90 days.

Low urgency, high hygiene value. Do it after the bid work lands.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 55, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.725Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218118342089772');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Add 2 harvested keywords: `beer bouquet for men`, `sour candy box`', 'Only 2 of 34 converting search terms aren''t already keywords — the harvest here is largely done, the DSA campaign is doing its job.

beer bouquet for men — $0.86 → $255.81 (297x ROAS)
sour candy box — $7.05 → $49.71

Add both as exact + phrase. Skip broad — the course only allows broad once a campaign is optimised, on smart bidding, and hitting goal.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 56, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.754Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218122854168626');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Add 61 negatives — $969.51/mo recoverable — but AD GROUP level, not campaign', '7.3% of account spend went to search terms with zero conversions in 30 days.

READ THIS BEFORE ADDING ANYTHING CAMPAIGN-WIDE. Several of these terms convert WELL in one price-band ad group and waste money in another:
• `gift baskets for men` — 3.42 ROAS in $100-149, but burns $40.68 in Top Performer
• `bourbon gift basket` — 10.16 ROAS in $200-300, burns $39.18 in $150-200
• `liquor gift baskets` — 4.68 in Top Performer, burns $33.38 in $150-200

That is a PRODUCT GROUP AND PRICE-BAND ROUTING problem, not a negative keyword problem. Add these as ad-group-level negatives to push the query to the band that converts. A campaign-level negative kills a profitable term.

GENUINE campaign-level negatives (irrelevant, not misrouted):
mancrates website $20.17 (competitor navigational)
basil hayden whiskey $20.55 (single-product query, not a gift)
wine gift baskets $11.29
candy gift box $10.35
pinot noir gift basket $8.73

Biggest single waster: `scotch gift basket` $66.86 in the $250-and-over group, 27 impressions, 2 clicks — a $33 CPC. Worth a look before negativing; it may be a bid problem.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 57, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.676Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218122853648814');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Decide the BroCrates brand-defence response', 'Auction Insights, brand auction, Aug 3 - Sep 1:

You: 86.88% IS, 95.81% top of page, 73.15% abs top of page
brocrates.com: 75.07% IS, 83.56% OVERLAP, position above rate 25.50%, your outranking share only 68.37%
brocrates.ca: also present
gourmetgiftbaskets.com: 24.64% IS
boarderie.com: 13.12% IS

A competitor with a near-identical name is in 84% of your brand auctions and beats you to the top spot a quarter of the time.

OPTIONS TO WEIGH:
1. Lower the brand tROAS (already a separate task) to push abs-top-of-page above 73%
2. Add a competitor ad group targeting `brocrates` / `bro crates` — high intent, they''re clearly targeting you
3. Trademark complaint to Google if BroBasket is a registered mark and they''re using it in ad copy (they can bid on it regardless; they cannot use it in text)

Option 1 is free and already queued. 2 and 3 are decisions for you.', NULL, '2026-09-12'::date, 58, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.689Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218118342277283');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Make unboxing video ', '', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), '2026-10-20'::date, 59, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-18T22:12:30.613Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1214911707556910');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Impact theme update — migrate to latest version (winter window)', 'Recurring maintenance: update the live Impact theme base to the newest version.

We run theme base updates 1-2x/year in quiet windows (mid-summer, late January). Last migration: 7.0.1 → 7.2.0 in July 2026.

Triggers to prioritize this:
    New version fixes bugs we are hand-patching in theme.js
    New version ships a feature we want
    We have fallen 2+ versions behind (migration pain compounds)


Process (proven in July 2026):
    Duplicate an unmodified copy theme in Shopify Admin, apply the vendor update to it, export it as a zip
    Start a Claude session in the BroBasket CRO project, upload the zip, provide a fresh fine-grained PAT (Contents + PRs on Shopify_Brobasket)
    Claude runs the layered migration: (1) adopt clean vendor files, (2) reconcile assets via normalized semantic diff, (3) merge customized liquid files hunk-by-hunk
    Known blind spot: customizations WITHOUT bb- markers (e.g. collection-banner Read More toggle, main-page JSON-LD) — Claude must run the token-level sweep of all replaced files vs pre-migration main
    Connect branch to preview theme, run full regression checklist (ATC + all addons, cart drawer + date picker, orphan fee removal, badges, checkout handoff, iOS Safari)
    Merge to main outside any promo window; revoke PAT after


Do NOT schedule between October and Father''s Day. If the bb-product-addons v3.0 refactor has shipped by then, this migration will be significantly cheaper.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-29'::date, 60, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-20T21:51:54.334Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216736383169316');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Editorial Outreach — AWIN Publisher Target List (Q4 2026 Gift Guide Push)', 'Hey

I’m James from BroBasket, a men’s gifting brand offering alcohol-themed, non-alcoholic, personalized, and corporate gift baskets.

I think BroBasket would be a strong fit for your audience—especially readers shopping for dads, husbands, coworkers, clients, and other hard-to-shop-for men.

We are currently expanding our corporate and non-alcoholic gift collection ahead of Q4, giving your readers options for occasions where traditional alcohol gifts may not be appropriate.

Through AWIN, we are offering:
• 12% editorial commission
• An additional 3% Q4 bonus
• Potential commission increases for confirmed placements
• Complimentary product samples for qualified publications

We would be happy to send up to three baskets for your editorial team to review. Are you currently considering products for any upcoming holiday or corporate gift guides?

Best,
James Grasty
The BroBasket


----------------------------------------

-

Master outreach task for the AWIN Editorial Rebuild. Goal: 15+ confirmed placements by Nov 1, 2026 (6+ Tier 1, 6+ Tier 2, 3+ Tier 3).

Each subtask = one publication to pitch. Cadence: initial personalized pitch → follow-up at 7 days → follow-up at 14 days with new hook → final touch at 30 days → mark inactive if no response.

Pitch must include: brand intro, audience-fit hook, why-now (corporate non-alcoholic line), 12% editorial commission + 3% Q4 bonus, sample offer.

Key deadline: Tier-1 gift-guide calendars lock mid-July 2026 — Tier 1 pitches are top priority NOW.

Samples: Tier 1 up to 3 baskets/pub (~$1,500 budget), Tier 2 one basket on request (~$800), Tier 3 digital only.', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 61, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-16T22:49:29.600Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216657976376293');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Quarterly Profit distribution — Q1 2027 (95% debt / 5% reward)', 'PROFIT FIRST QUARTERLY DISTRIBUTION

Distribute the Profit account (VCCU) balance:
  - 95% → debt paydown (highest-interest first)
  - 5% → owner''s reward

Profit account resets to ~zero after. Separate from the twice-monthly 1% allocations.

Quarterly checkpoint: review whether to ramp allocation %s. If SBA 7(a) has funded, revisit the whole debt-paydown vs. reserve strategy.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-03-31'::date, 62, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:22:04.040Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216545036774838');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Quarterly Profit distribution — Q4 2026 (95% debt / 5% reward)', 'PROFIT FIRST QUARTERLY DISTRIBUTION

Distribute the Profit account (VCCU) balance:
  - 95% → debt paydown (highest-interest first)
  - 5% → owner''s reward

Profit account resets to ~zero after. Separate from the twice-monthly 1% allocations that build the balance.

Quarterly checkpoint: review whether to ramp allocation %s as debt comes down and stability holds.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-31'::date, 63, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:22:03.997Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216545036734294');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Quarterly Profit distribution — Q2 2027 (95% debt / 5% reward)', 'PROFIT FIRST QUARTERLY DISTRIBUTION

Distribute the Profit account (VCCU) balance:
  - 95% → debt paydown (highest-interest first)
  - 5% → owner''s reward

Profit account resets to ~zero after. Separate from the twice-monthly 1% allocations.

Quarterly checkpoint: review whether to ramp allocation %s as stability and margins improve.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-06-30'::date, 64, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:22:04.033Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216544490029775');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Profit First allocation — 10th (drain Income account)', 'Twice-monthly Profit First allocation. BASE = balance in Income since the 25th. Drain to ~zero per allocation %.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-10'::date, 65, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:15:16.519Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216544931177866');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Profit First allocation — 25th (drain Income account)', 'Twice-monthly Profit First allocation. BASE = balance in Income since the 10th. Drain to ~zero per allocation %.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-25'::date, 66, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:15:16.483Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216545033072633');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Profit First allocation — 25th (drain Income account)', 'Twice-monthly Profit First allocation. BASE = balance in Income since the 10th. Drain to ~zero per allocation %.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-25'::date, 67, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:15:16.508Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216544488176123');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Profit First allocation — 25th (drain Income account)', 'Twice-monthly Profit First allocation. BASE = balance in Income since the 10th. Drain to ~zero per allocation %.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-25'::date, 68, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:15:16.490Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216544931199936');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Profit First allocation — 10th (drain Income account)', 'Twice-monthly Profit First allocation. BASE = balance in Income since the 25th. Drain to ~zero per allocation %.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-10'::date, 69, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-13T21:15:16.475Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216545033105532');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Great cheap Content strategy - Mixologer', 'i James, in celebration of America''s 250th birthday, we want to pay you to sling some drinks!
If you make fun videos at home, we''re looking to partner with 10 cocktail slingers who love sharing their experiences on social media.

In exchange for creating fun content featuring The Mixologer, we''ll send you $100 cash, free cocktails, and a chance to win a $1,000 GRAND PRIZE.


To be eligible, we''re looking for anyone who:
    Have at least 1,000 followers
    Have posted at least 2 times in the last 30 days
    Have a public account with an engaged audience
    Are 25 years of age or older
If that sounds like you, simply reply to this email with:
    Your Instagram or TikTok handle
We can''t wait to see what you create!

Cheers,
The Mixologer Team', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 70, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-09T15:49:23.599Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216425749380938');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Fix GTM issues with GA4', '', NULL, NULL, 71, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-19T19:50:39.238Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1214944115849993');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Phase 4 - New Sales Channels', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 72, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-11T21:37:34.358Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1214713296890954');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Find and build cocktail kits', 'https://claude.ai/chat/1c44c15a-c423-4f15-b4c2-5988c64cf955


FILES
https://docs.google.com/spreadsheets/d/18ak5DZPDfoEW8MdMt0RLqOStWGSWZ6fldRpKcOYhdHU/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1tuE8n1BNj1xEzyyzq2Woo72osX6ywel6RhL2-sNWIMU/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1X_Z_PQI2NgDnItwAqJ7YJWOM6BW87wgKr4FRzbxymPI/edit?usp=sharing

Exampels 

https://cocktailgarnishco.com/collections/shop-garnishes

https://yescocktailco.com/product-category/gifts/

https://www.wine-n-gear.com/product-category/wholesale-barware/

https://www.webstaurantstore.com/search/cocktail-spoons.html

Bundles/upsells Sheet
https://docs.google.com/spreadsheets/d/1gm9yAAYhLiXtYh0PCrbtfEp-c4UacvXyn8L3RadoEwM/edit?usp=sharing

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 73, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-23T23:53:22.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213778736283445');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Weekly BroBasket Meeting ', 'Agenda and Notes
https://docs.google.com/document/d/1QI1eOIaCF92iBKjkMHid9jvATczTR_QADlk64n6IvoA/edit?usp=sharing

Purchasing a share of the brobasket agreement 
https://docs.google.com/document/d/1qSAl5tDJ_vOJAKhDzl-tfhF4JFO8-n-V/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-27'::date, 74, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21T20:31:07.111Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219756542244259');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Pallet trash can - cost?', '', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), NULL, 75, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-23T19:14:25.292Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213777224033986');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Monthly tasks', '', NULL, NULL, 76, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-25T14:27:21.119Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213397793567610');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Weekly tasks', '', NULL, NULL, 77, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-25T14:25:53.952Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213397793567608');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Cocktail Subscription box', 'Competition 
https://cocktailcourier.com
https://shakerandspoon.com
https://saloonbox.com/products/craft-subscription
https://themixologer.com/
https://feastandwest.com/cocktail-kits/
https://liquid-alchemist.com/mixed-drink-subscription-box/

    Shaker and spoon run ads on meta
    Shaker and Spoon have infuencers curate and promote cocktail kits 

Keywords 
cocktail subscription box
cocktail kit(s)
cocktail making kit
cocktail subscription

Products to use 
https://www.faire.com/brand/b_s2reff9vfb?fdb=mcmanntatecocktailco


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 78, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-12T20:04:44.287Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213245738120062');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'One Thing!', 'here we lay out what our core focus each week will be and where we will focus our one thing time on', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 79, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-07T17:22:53.657Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210999442828351');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'New NA Cocktail basket shots ', '', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), NULL, 80, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-04T22:14:56.707Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1213129894486878');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Shipworks fixes', 'Need notes from Nely at our meeting to figure out what needs to be fixed here ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 81, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-27T01:00:08.564Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1212983902384413');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Holiday Fixes', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21'::date, 82, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-27T01:02:56.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1212983902384415');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Plan to launch more gifts - need to add 100+', '    Having speicifc gifts for specific search terms like: going away, get well, new dad - etc... 
    we need to add more gifts that can do the same and focus on more niche keywords 
    Mancrates is a good place to go off of they have lots of various focuses 
        Cooking: pizza, tacos, steak, etc...
        Grilling: Rib master, 
        Drinking: beer Accessories, cocktail kits, etc..
        Beef Jerky
        Maker Kits: kinfes, pipes, etc...
        Fishing 
    Bro Gift Ideas 
        https://www.battlbox.com/collections
        https://www.mancrates.com/collections/gifts-for-men
https://app.asana.com/1/1200828512126939/task/1213245738120062

master List
https://docs.google.com/spreadsheets/d/109CR0gAEVXEU7VhwyuNxi0zu8H1gKbgaqC_QliRgp5A/edit?usp=sharing

Gift Launch Process
https://docs.google.com/document/d/1DvNfKQLTLfBN8TIpTJNbdCkZReN9JwOAvwVKLjoByxs/edit?usp=sharing

Places to get new containers 
https://dufeckwood.com/

https://www.longhornimports.com/', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 83, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-03T19:36:37.358Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211213305448964');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Blog/Content to Produce', 'Blog Content Ideas doc from 180
https://docs.google.com/spreadsheets/d/1_n1GrKhaQJ7nDq1HA8KJTqqcc1JCfYYJhdNastD0B_M/edit?usp=sharing

Tools to use to write
    https://chatgpt.com/
    https://claude.ai/

Tool to use to optimize
    https://app.surferseo.com
    join here: https://app.surferseo.com/join/sflGPU5XRkQGSgGZ-7p0kE36Z7kqFeqt


Where to create blog post docs
https://drive.google.com/drive/folders/1bI4o_CbFMTZYDorPSjUt8ge7iDIqSQJn?usp=sharing


How to write and then optimize a blog post 
https://www.loom.com/share/ff2fa04c706e4cd5922d1d4b94ca2354?sid=bb546def-6eb0-480f-a902-549e23233332

https://app.asana.com/app/asana/-/get_asset?asset_id=1211046912267090



How to make a custom Images
https://www.loom.com/share/3a7bed76e50e4d9d9cee70b0855d829d?sid=52d3c846-2c47-4e11-8672-2a38aea0c775

https://app.asana.com/app/asana/-/get_asset?asset_id=1211213305448981


Example ChatGPT Prompt to use
Can you please edit this image to have a pint glass in the middle of the bucket of beers with silver engraving that reads "Cheers to 10 Years!" and engrave the existing pint glass in the image to read "Cheers to 10 Years!"

Can you please edit this image to have a plaque in the middle of the gift basket crate with gold engraving that reads "Cheers to Many Years!"', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), NULL, 84, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-28T21:39:33.759Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210908707865885');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Create more engaving options ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 85, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-05-15T23:40:43.892Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210267892892132');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'GIn sampler basket', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 86, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-13T18:50:24.584Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208960223143414');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Add club soada and Hihg ball cocktail baskets', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 87, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-11T20:27:25.349Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208960222279745');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Dial in engraver settings', 'Print out all differnt settings to see what looks best ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 88, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-05-14T21:58:36.780Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210253928232321');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Create gift baskets for men guide post', 'https://docs.google.com/document/d/18hICP6c2h7KgiYhy9irJWjfaIFrkWaf6eyrx-p3zWuo/edit?usp=sharing', (SELECT id FROM people WHERE email = 'drew@thebevconnect.com'), NULL, 89, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-05-12T23:00:49.553Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210231810775898');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Upgrade plan for old products and laggards ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 90, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-03T19:21:05.954Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208877017318971');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'find a replacement for popcornopolis ', 'Tasking nelly with this ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 91, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-04-03T18:53:34.042Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209875886034375');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Better way to get tracking #s to people ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 92, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-23T21:40:17.877Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209038925624402');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Better wine options ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 93, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-05T20:56:54.570Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208916942177365');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'New beer taster glasses', 'more like ones you would find at a brewery - 5-6oz, small stright up and down ones', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 94, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-05T16:48:22.607Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208482108053052');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'To do' LIMIT 1), 'Custom wood Boxes for Engaved liqour', 'Wood upgrade with maybe plastic or glass cover
Basic nice BroBox / BroBasket custom box good for shipping and unboxing
Include a Engraved By XYZ hand written note in box ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 95, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-04T17:40:50.429Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208479369945117');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Finance' LIMIT 1), 'Line of credit / SBA Loan', 'https://cdcsbf.gatewayportal.com/applications/103344

VCCU Recs
https://www.calcoastal.org/

https://edcollaborative.com/edc-loan/


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-02-28'::date, 96, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-24T18:21:45.392Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1217799988560071');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Finance' LIMIT 1), 'how to max card points', '🚀 THE SHORT VERSION (What to use for what)

If you want a super quick cheat sheet:
⭐ 1. Advertising (Google, Meta, Klaviyo, Bing, Amazon ads)
Use: AMEX Business Gold → 4X Membership Rewards on the first $150k / year
    Ads are one of your top 2 expenses → this is the #1 best multiplier in the entire business card world.
If you blow past $150k yearly in ads → switch overflow to:
Backup: Chase Ink Business Preferred → 3X UR Points
(also transfers to Hyatt/United/Southwest and is incredibly valuable)

⭐ 2. Inventory Purchases (products, bottles, food items, suppliers)
If supplier accepts Visa/MC:
Use: Bank of America Business Advantage Customized Cash (set to 3% category for online purchases or business consulting/services)
→ Realistically gives ~ 3.75% – 5.25% back if you hit Preferred Rewards tiers
(Best for cash back.)
If supplier accepts AMEX and you want travel points instead of cash:
Use: AMEX Blue Business Plus → 2X MR on everything (up to $50k/yr)

⭐ 3. Software Subscriptions (Shopify, Klaviyo, Gorgias, Instantly, Meta tools, etc.)
Use: AMEX Blue Business Plus → 2X MR
This is unbeatable for fixed software expenses.
Backup if BBP hits $50k cap:
Chase Ink Cash → 1.5% but in UR points if you link it to CSR/CSP/Ink Preferred pool.

⭐ 4. Shipping (USPS, GLS, UPS, FedEx when you do use cards)
Use:
US Bank Business Triple Cash → 3% on shipping
If you have the Business Cash, that’s 3% too.
Backup:
Capital One Spark → 2X
(Not as good, but simple.)

⭐ 5. Everything Else (random expenses, office supplies, etc.)
Use:
AMEX Blue Business Plus → 2X MR
When that caps at $50k →
Use: Capital One Spark → 2X


🔥 THE FULL OPTIMIZED STRATEGY

✔️ Cards You Should Keep (high ROI)

1. AMEX Business Gold
    4X on Ads = #1 profit-maker given your business model
    You spend a lot on Google/Meta → this is delivering thousands in points
Keep it. It’s perfect for you.

2. AMEX Blue Business Plus
    2X on everything up to $50k
    Only card in the game that earns 2X transferable points on uncategorized business spend
    Ideal for software + misc expenses
This is mandatory for point maximization.

3. Chase Ink Business Preferred
    3X points on Ads (backup) + shipping + software
    Points transfer to Hyatt, which is one of the highest value redemptions possible
This is the best “backup ad card” once AMEX Gold hits its 4X cap.

4. Bank of America Business Advantage Customized Cash
If you''re doing:
    $100k+ annual combined balances
    or you can hit Platinum Preferred
    This card gives:
    Base 3%
    Up to 5.25% cash back with Preferred Rewards
Amazing for inventory.

5. US Bank Business Triple Cash
    3% back on USPS + shipping
    Simple, direct, accumulates fast

6. Capital One Spark 2X
    2X everywhere with no cap
    Perfect fallback card


❌ Cards You Can Cancel or Stick in the Drawer

AMEX Plumb
This is not a rewards card.
Only keep if you need the float.
Otherwise → cancel.
AMEX Blue Cash / Blue Points
Redundant. You already have the superior options.
Citi Costco
Not good for business, very niche categories.
Cancel.
BILL Spend & Expense Card
Only useful if you''re doing vendor automation through BILL.
Rewards are weak → ignore it.
US Bank Business Platinum
This is basically a no-rewards card.
Cancel.


✨ NEW CARDS YOU SHOULD ADD (TO MAXIMIZE TRAVEL VALUE)

I’d optimize around two currencies:
    AMEX Membership Rewards
    Chase Ultimate Rewards
These two transfer partners will get you amazing travel redemptions for family travel.

🔶 1. Chase Ink Business Cash (NO annual fee)

Why get it?
    5X at office supply stores
    That includes… gift cards
    → You can buy $5k–$10k of Visa gift cards at Staples/Office Depot whenever they do fee-free events
    → Stack with Meta/Google ad payments or supplier payments
This is how big agencies generate millions of points.
This is a must-have.


🔶 2. AMEX Business Platinum (optional but powerful)

Value:
    35% point rebate when booking flights on one airline
    Airport lounges (you travel ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 97, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-12T17:11:54.089Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210054226073906');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Finance' LIMIT 1), 'Finance Plan', 'https://docs.google.com/document/d/1M9Nk6sBqhop9lvjGV9ULzRG70JRSD07YOFGiO751aXQ/edit?usp=sharing

0% apr credit cards 
https://www.nerdwallet.com/best/small-business/zero-percent-apr-business-credit-cards

https://docs.google.com/spreadsheets/d/1prD0ySVClAUuXGyZ6ulNN-WOsKpUO5Pckpa6H-aP0Jo/edit?usp=sharing 


', NULL, NULL, 98, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T20:22:38.584Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869503');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Finance' LIMIT 1), 'Payself back for the initial investment', '    Inital Inventment Owed = $47,345.28
    Yecommerce owed = $12,004.83
    Total Owed = $59,350.11
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 99, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:11:35.915Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869581');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Holiday Marketing War Room', '', NULL, NULL, 100, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-14T22:32:08.639Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219513774203505');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'RESOURCES', 'https://www.notion.so/BroBasket-206ad86c972a8087b1bdf9c0c6319428?source=copy_link', NULL, NULL, 101, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-02T20:57:50.024Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210444835089660');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Bing Ads - BroBasket', 'https://app.asana.com/0/profile/1211431490462349 I gave you access to our Bing account, its already setup, just needs some dialing in ', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 102, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-16T21:02:22.876Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211664564225103');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Google Ads - BroBasket ', 'https://app.asana.com/0/profile/1211431490462349 I have been managing our ads myself since April and want to give you a crack at them as it sucks a lot of time from me. 

ROAS target for the account is a 350% 

Pleae audit the account and tell me what you might do differently. 

Some background
    We tried a feeder strategy, but it did not work because you can not retarget when you sell alcohol 
    We did well with some feed-only Pmax campaigns, but performance was always inconsistent so we killed them off to focus on shopping and search
    Over the last month, we broke things out by price point but it seems to be a loser 

Currently, I am planning on reconsolidating the shopping campaigns and figuring out a new plan from there 

Let me know if you have any questions
thanks ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 103, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-06T15:01:02.339Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211564077019491');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Meta Ads - BroBasket', '



Link to all of our images
https://drive.google.com/drive/folders/1-LU05Pp3AI7LAg3Ve3cjBE2KqwUycxYH?usp=sharing

https://docs.google.com/document/d/1y_Ja8o0uI9W8xFwgjLsYX--Xl6RdVBNhZxyGdNSWLj0/edit?usp=sharing

https://docs.google.com/document/d/1y_Ja8o0uI9W8xFwgjLsYX--Xl6RdVBNhZxyGdNSWLj0/edit?tab=t.0

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 104, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-03T20:55:35.939Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211826768684663');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'BroBasket — search - product AI MAX: cut budget $165/day → $10/day and diagnose', 'CAMPAIGN: search - product AI MAX (The Brobasket)
SETTING: Campaign daily budget
CHANGE: $165.00/day → $10.00/day (or pause)

WHY: ENABLED with a tROAS 235% target, and over the full 30-day window it recorded ZERO impressions, ZERO clicks, ZERO cost. It is not serving at all.

This is NOT a bidding problem — it is not configured to serve. Cutting the budget frees no actual cash (it spends nothing) but removes $165/day of exposure that could start consuming without warning while the account already sits exactly on its $15,000/mo cap.

THEN DIAGNOSE: check for missing/paused ad groups, no eligible keywords, ad disapprovals, or a tROAS 235% target so high nothing enters the auction.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 105, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-08T18:56:28.235Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218286867050719');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Funny Baskets for Content ', 'https://docs.google.com/document/d/1CY6Fbqdn7kN1gZh5skI4YF99GYAsvjOHLopwGQlIrWo/edit?usp=sharing

https://claude.ai/chat/4aaa511b-9c20-47b2-99a8-63de5e0390a9

Fart maxing and other similar gift. Boxes for tiktok videos - could sell them on shop and use as a funny marketing arm', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 106, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-31T22:59:59.408Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1218029646706129');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Tag Publishers ', 'Tag = PROMO-BUMP-AUG26 

List to work with 
https://docs.google.com/spreadsheets/d/1bchKXT2fUoUKnDtARhx7rZIJRvuCEluXFPH61TqRcK0/edit?usp=sharing

https://ui.awin.com/awin/merchant/59093/tagged-affiliates

How to do this 
https://www.loom.com/share/a96122e629164904b56a66fd5e04c997

https://app.asana.com/app/asana/-/get_asset?asset_id=1216733628677476


', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 107, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-20T21:37:44.912Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216733628677472');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'B2B Outreach - BroBasket', 'Past VIP customers (2+ orders and large orders) 
https://docs.google.com/spreadsheets/d/1TI_ksQkXmyn1IWSS8gllkYVQsRCILIHrou0nxGynSzo/edit?usp=sharing

https://docs.google.com/document/d/1K_ULzb5ZBwJHMUtodVWT4m3RcFKfyBKR43BgtXvAn-E/edit?usp=sharing', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 108, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-29T22:58:02.051Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211787484104422');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'BroBasket - Invite new publishers - AWIN', 'Where to search opportunities 
AWIN > Publishers > Search - Opportunitys Marketplace 
AWIN > Publishers > Search - Partner Directory 

Keywords to use to find publishers:

Gift-related keywords
    gift baskets
    gifts for men
    men’s gifts
    birthday gifts
    corporate gifts
    holiday gifts
    Father’s Day gifts
    Valentine’s Day gifts
Alcohol / Lifestyle keywords
    alcohol gifts
    whiskey gifts
    bourbon gifts
    tequila gifts
    beer gifts
    cocktail kits
    drinkware / barware
    entertaining
    home bar
Publisher type keywords
    lifestyle blog
    men’s lifestyle
    food and drink
    corporate gifting
    shopping
    product reviews
    coupon / deal site


Blurb to send with invites - Long

Hi [Publisher Name],
I’d love to invite you to join our program on AWIN for TheBroBasket.com – the original alcohol-themed gift basket company for men. We create one-of-a-kind whiskey, beer, tequila, and cocktail gift baskets that make memorable gifts for holidays, birthdays, and corporate occasions.

Our program offers competitive commissions, strong conversion rates, AOV of $130 and a wide range of customizable gift baskets that appeal to both consumers and corporate buyers.

If your audience enjoys content around gifting, men’s lifestyle, food & drink, or special occasions, we’d be a great fit. Excited to partner with you!

Cheers,
[Your Name]
The BroBasket Team

Blurb to send with invites - Shot

General / Lifestyle Affiliates

> Join TheBroBasket.com 
We create unique alcohol-themed gift baskets with whiskey, beer, tequila & cocktail kits—perfect for men’s gifts, holidays, & corporate occasions. 
Strong commissions + high conversions + $130+ AOV .
https://www.loom.com/share/58eb7f99fe8c4bd9a5e8f0e4e684b38e?sid=47612dad-8708-4fc7-8512-66b3fcc96c42Let’s partner!

Coupon / Deal Sites

> Partner with https://TheBroBasket.com

Alcohol-themed gift baskets for men, holidays & corporate gifting. Competitive commissions + wide appeal = great conversions for your audience.

Strong commissions + high conversions + $130+ AOV . Let’s partner!

Corporate / B2B Focus

> Join TheBroBasket.com’s affilaite program! 

We offer customizable alcohol-themed gift baskets for clients, employees & events. High AOV, great commissions, strong gifting demand year-round.

Strong commissions + high conversions + $130+ AOV . Let’s partner!


How to do this
https://www.loom.com/share/58eb7f99fe8c4bd9a5e8f0e4e684b38e?sid=47612dad-8708-4fc7-8512-66b3fcc96c42', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 109, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-22T19:51:58.339Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211419326021136');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Paid Social', '', NULL, NULL, 110, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:40:41.072Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869604');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'SEO Plan ', 'Keyword Targets and content map done by 180 
https://docs.google.com/spreadsheets/d/1CPC2kEOdNcR8hvx67Eysil-f7FuBDKP1rLBhQ3KnL6I/edit?usp=sharing

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 111, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-24T22:47:27.248Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209239132466588');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'ID product feed titles to change ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 112, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-11T13:58:03.912Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210054226073760');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Content  Marketing', 'Content road map done by 180 
https://docs.google.com/spreadsheets/d/1CPC2kEOdNcR8hvx67Eysil-f7FuBDKP1rLBhQ3KnL6I/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 113, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-09-11T19:20:03.746Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208286700902338');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'B2B Plan - wholesale', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 114, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T05:12:41.970Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869675');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Affilaite ', '', NULL, NULL, 115, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:39:37.278Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869596');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Partnerships', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 116, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T05:14:20.480Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869683');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Video Content Ideas', '- make 10-12 funny videos of using stroller saver in Park or similar and post to TT and TT shorts - run ads on the ones with the most traction 
- ideas for videos: use chatgpt, diapers and wipes on the spot for snotty noses and poopy diapers', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 117, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-20T18:03:27.624Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1202802031897483/task/1208095808552193');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Outreach to Corp clients ', 'Make a google form questaire 
    How did you find us 
    whats your role in the company 
    do you know any others like you
    :?

Offer starbucks / amazon gift card ($24) for their time


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 118, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-31T01:08:47.034Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209061659242888');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Organic Social ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 119, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:41:05.727Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869606');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Organic Social ', '', NULL, NULL, 120, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-10T16:42:47.973Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216460680827869');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Marketing Plan', 'https://docs.google.com/document/d/1P24AeZmffGBdw4xnhh6lT85uy2fDi4Dvr6EMRMIISYg/edit?usp=sharing', NULL, NULL, 121, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T20:23:11.090Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869505');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Marketing' LIMIT 1), 'Email Marketing - BroBasket', '', NULL, NULL, 122, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-13T22:19:04.212Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211939834665034');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Channels' LIMIT 1), 'BroBasket Amazon', '', NULL, NULL, 123, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-22T17:55:15.583Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1212928454658537');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'SEO - product Page Revap', '🔑 Step 1: Build ahttps://docs.google.com/spreadsheets/d/1AArgOmga8mKXeTUU_Ydq7xAf1vHIp16l7aC8moCvFyE/edit?usp=sharing

    Export all product URLs from Shopify (CSV or use an app).
    Include current: URL, Product Title, H1, Meta Description, Word Count, Last Updated Date.
    Add columns for:
        Primary Keyword
        Secondary Keywords
        Surfer SEO Score (once analyzed)
        Ahrefs Traffic / Ranking Keywords
👉 This becomes your central “SEO Content Inventory” to track improvements.


🔑 Step 2: Keyword Mapping (via Ahrefs)

    Use Ahrefs Site Explorer → Organic Keywords to pull all current keywords each product ranks for.
    Assign one main keyword (highest volume & relevance) and 2–5 secondary keywords per product.
    Make sure there’s no cannibalization — each product should own its own keyword cluster.
👉 Update the spreadsheet with these keywords.


🔑 Step 3: Content Auditing (via SurferSEO)

    Run a Surfer Content Audit or Content Editor for each main keyword.
    Surfer will give:
        Recommended word count range
        NLP terms & phrases to include
        Content structure ideas (headings, entities)
    Add current Content Score and target score to the spreadsheet.
👉 This shows you which pages need a light refresh vs. a complete rewrite.


https://drive.google.com/drive/folders/1POn6W_E1O4tvUjZI7ULmUHodaAJXYa3n?usp=sharing



🔑 Step 4: Create a Content Template (System for Scale)

To avoid writing from scratch every time, use a standardized content block system:
Above the Fold
    Strong intro (brand, USP, emotional hook).
    3–5 product benefits written in customer language.
Middle Section (SEO Boost)
    Add a short comparison paragraph: why this product vs. alternatives?
    Call out data points (sizing, weight, ABV %, materials, dimensions, etc.).
    Insert Surfer keywords naturally into benefit-driven copy.
Bottom Section (Trust + Depth)
    FAQs (pulled from Ahrefs “Questions” or People Also Ask).
    Usage tips, storage instructions, or customer stories.
    Schema markup opportunities (FAQ, product).
👉 This ensures every product page has enough depth, keywords, and user intent coverage.


🔑 Step 5: Scale Execution

    Prioritize products by revenue contribution + SEO opportunity (use Ahrefs Top Pages to find the “low-hanging fruit”).
    Create batches of 10–20 product pages.
    Run them through Surfer’s Content Editor with your template.
    Use copy-paste plus light customization to keep things efficient.


🔑 Step 6: Internal Linking & Cross-Selling

    Use Ahrefs Site Explorer → Best by Links to identify strong internal pages. Link from these to product pages.
    Add related products sections optimized with anchor text (“See more [bourbon gifts] here”).
    This strengthens topical authority and keeps users on-site longer.


🔑 Step 7: Monitor & Iterate

    Track rankings & traffic in Ahrefs (or GSC).
    Track conversions in Shopify.
    After ~8–12 weeks, re-run Surfer audits to check for new keyword opportunities.
    Update pages quarterly with new FAQs, reviews, or product updates.

🛠️ Tool Roles
    Ahrefs = Keyword discovery, competitor analysis, content gaps, traffic monitoring.
    SurferSEO = On-page optimization, content guidelines, NLP keyword insertion.
    Shopify CSV export/import or a bulk editor app = Execution at scale.

✅ End Result: You’ll have a repeatable workflow where every product page is:
    Keyword-mapped
    Surfer-optimized
    Content-rich (not just thin descriptions)
    Internally linked for authority
    Regularly updated with fresh info
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 124, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-18T21:53:44.455Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211082645355266');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'SEO Tasks from 180', 'As promised, we''ve got the first couple deliverables ready for you to review. They''re a little meaty, so I recorded a quick Loom video to walk you through everything: https://www.loom.com/share/18e7f2da9c144bd6afb54e499c75d9f5?sid=7be9dcc0-ac6b-4d39-b78a-17436e77a019

After you''ve watched that, you can go through these action items that I mentioned in the video. (The order is important here, you''ll want to start with #1 and end with #3).
 
#1. Review the https://docs.google.com/spreadsheets/d/1AG6pQQ6Mbwt8Ne0rVrOhI7cybr_nJ5oTiZI9Zwp7va4/edit?gid=1917733101#gid=1917733101 and see if you''re comfortable with those changes. Nothing is set in stone, and I''d be happy to adjust anything - these are just the initial recommendations based on SEO knowledge, but you know your customers best, so if there''s anything we cut from the menu that you don''t want to leave out, we can definitely work with that! 
Once you''re comfortable with the changes recommended, you can go ahead and implement this one. Important to note - there''s no deleting or 301-ing here - just removing/adding items to the header nav. We''ll do any 301 redirects later, after pages have been reoptimized for consolidated keyword targets.

#2. Review the https://docs.google.com/spreadsheets/d/1X_Ukv4w9o274nmRE_KkopYr40xErE71igWuMjVK7W6M/edit?gid=112318036#gid=112318036 of the Optimization Roadmap. This is where I''ve broken down which pages we''re recommending consolidating for more SEO power, and which pages will stand as is. Again, nothing set in stone here.

#3. Review the https://docs.google.com/spreadsheets/d/1X_Ukv4w9o274nmRE_KkopYr40xErE71igWuMjVK7W6M/edit?gid=151075677#gid=151075677. Make sure this list of pages and keywords look good to you as content re-working focuses. There are a few items in there that are a little bit TBD based on how you feel about the consolidation recommendations. 


After you''ve gone through those and we''ve agreed upon everything:
1. I''ll create the content briefs for you to use to reoptimize the page content. 
2. You''ll create the adjusted content for all the pages in the Roadmap, and implement it on the site.
3. You''ll create all necessary 301 redirects for page consolidations.


Take your time reviewing all of this info and don''t hesitate to ask any questions - this will probably be the biggest and most complex deliverable of the lot. Also would be happy to hop on a call on Tuesday or Wednesday of next week if you''d like to go through anything in more detail.


#4 - Surfer Docs 
Hi James - as promised, we created Surfer docs for all of the 25 top-priority page reoptimization opportunities: https://docs.google.com/spreadsheets/d/1X_Ukv4w9o274nmRE_KkopYr40xErE71igWuMjVK7W6M/edit?gid=151075677#gid=151075677 . All the doc links are in Column M.

We also wrote highly-optimized title tags and meta descriptions for each of these pages that I recommend implementing even before you get around to optimizing the content - good titles and metas can make a surprisingly quick difference in rankings. In our next batch of deliverables, we will be providing more meta description recommendations for the lower-priority pages.

Let me know if you have any questions about any of this. I''ll be OOO for the rest of the week, but my team will still be working on the next round of deliverables, which I''ll be able to send over sometime next week. If you have any pressing questions in the meantime, don''t hesitate to reach out to Andy and he can help you out.

New Deliverables
    https://docs.google.com/spreadsheets/d/1V6_Bk384ScbTcmnoXFYG9nRabLf1VkE4xtF22wi9-Aw/edit?gid=1656675280#gid=1656675280
        Goal: include optimized meta descriptions for products/collections that don''t have them, or have descriptions that are too long or too short
        STATUS: Completed & awaiting implementation
        Next steps, BroBasket team: Review the recommended meta descriptions and implement them for the product and collections pages listed.
    https://docs.google.com/spreadshee', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 125, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-07T21:49:12.724Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210732348911109');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'Improve images on all top products ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 126, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-03-31T16:44:58.571Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209838556760211');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'Website issues to fix', 'Checklist from Loom Transcript:
    Remove Elements:
        Remove the hard-coded pop-up.
    Mega Menu Updates:
        Replace existing mega menu with a simpler version, providing more control over the header and menu links.
        Ensure there are more options for adding regular links instead of being limited to Mega Menu blocks.
        Allow the use of products and links within the menu without default Mega Menu styling.
        Improve functionality of Mega Menu, ensuring better display and usability on mobile.
    Product Display and Pagination:
        Remove pagination; enable lazy loading for products so all are displayed on one page.
        Update collection template to allow more control over the number of products displayed (e.g., 2 or 4 products).
        Add options to remove sidebars filters or adjust product display as needed.
    Code Customization:
        Remove unnecessary hard-coded elements, like price filters on the “Shop All” page.
        Enable customization of collection and product templates to avoid reliance on hard-coded elements.
        Update the theme (Dawn theme) to eliminate junky customization and provide more editable features.
    Product Upsell Improvements:
        Remove/modify fixed upsell items on every product.
        Implement a dynamic upsell system (e.g., using a tool like One Click Upsell) to enable easy switching and customization of upsells per product.
    Customization and Functionality:
        Improve custom product options (e.g., "Big Drinks, Big Bundle") to be more editable and less hard-coded.
        Provide additional functionality and flexibility for customizing products and product pages.
    General Cleanup and Usability:
        Remove or clean up unnecessary images and elements that are hard-coded or clutter the interface.
        Enhance user experience with clear, accessible options for making changes.
    Communication:
        Confirm all changes with the team and finalize the list of required updates and improvements.
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 127, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:59:10.134Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869642');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'Wolesale portal', '', NULL, NULL, 128, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T05:12:52.646Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869678');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Website' LIMIT 1), 'IDEA - for corp page', 'Picture of someone on their computer and phone with out website on their computer screen

me on the other enc wearing a brobasket shirt on the phone taking their order 

a person receiving the box and smiling

similar to this 

https://www.gourmetgiftbaskets.com/Corporate-Gift-Baskets.asp', NULL, NULL, 129, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-09-27T21:14:25.342Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208423646742586');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Holiday Opps Review', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-22'::date, 130, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-20T22:58:19.821Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1219707341633557');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Supplier Catalog Site', 'https://suppliercatalog.netlify.app/ ', NULL, NULL, 131, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-02T22:17:48.632Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1216250283111112');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Ordering Alcohol', 'https://app.provi.com/

https://mybeesapp.com/

https://shop.sgproof.com/


', NULL, NULL, 132, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-24T22:26:05.708Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210632661650399');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Plan to dropship for large online liqour store ', '', NULL, NULL, 133, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T00:21:17.964Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869554');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Opperations Plan', '', NULL, NULL, 134, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T20:23:13.233Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869507');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Other Lasers too look into', 'Kurt Recommended  
https://omtechlaser.com/

Also recomended a UV laser from China 
https://www.alibaba.com/product-detail/UV-CO2-Fiber-Laser-Marking-Machine_1600429373694.html?spm=a2700.galleryofferlist.topad_classic.d_title.6cf17b9cW0q4wZ


', NULL, NULL, 135, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-06T19:34:17.563Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207984221381191');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Get broken equipment fixed', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 136, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:28:50.674Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869454');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Warehouse Opps' LIMIT 1), 'Shipping Supplies', '', NULL, NULL, 137, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-03T22:33:51.876Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208462943700652');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'BroBasket Returns', 'https://docs.google.com/spreadsheets/d/1xx9pLT55nIsc8BG7Zgxy4WIOF_q8lVimxFtYfqe2Uso/edit?usp=sharing

How to perform this ongoing task
https://app.asana.com/1/1200828512126939/project/1200910477972058/task/1212628238424667?focus=true

', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 138, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-12-31T00:48:41.168Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1212619299627732');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Daily Customer Service Tasks', 'https://app.asana.com/1/1200828512126939/project/1200910477972058/task/1208734015667231?focus=true

Tracking Doc
https://docs.google.com/document/d/1Y2A6aQRymKHnsFN7E2X87vAWZRTvHAnnnXkuPwCRmz4/edit?usp=sharing', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 139, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-12-31T16:20:32.606Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1212619299627737');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Schlarship Requests', 'https://app.asana.com/0/profile/1201500833217140 We get a fair amount of schlarship requests and have a few to go through. 
We will tag and auto asign to you to then go through this process

https://drive.google.com/drive/folders/1Ipl9XErsKE9RrdMVxjiAVvgKf_Z6plQR?usp=sharing

https://docs.google.com/spreadsheets/d/1z7My0VWYbvZQTd2YP4zEOSceYG456WhXtcXafnBEmOc/edit?usp=sharing

Rely with the saved replay

Here is how to do it 
https://www.loom.com/share/433f5a8dd0e34e07b598105a9a01e0c3?sid=328cee83-127b-4643-b946-5f1ee7a5400a

https://app.asana.com/app/asana/-/get_asset?asset_id=1210663072865438


', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 140, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-27T20:37:33.666Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210663072865435');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Input POs into SumTracker', 'Where to put POs in
https://inventory.sumtracker.com/index/purchase-orders

Where to find invoices to put in
https://drive.google.com/drive/folders/1wdN0KavYkwCrAeCKYXJFneGcNWp3l6Xz?usp=sharing

How to do this in SumTracker
https://app.asana.com/1/1200828512126939/project/1200910477972058/task/1211389912125790?focus=true

Up-to-date inventory Master sheet
https://docs.google.com/spreadsheets/d/1bkHOTi0r8mCTHbmBh6cZvBPE84FsCzEH9wnjLnjm0p8/edit?usp=sharing', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 141, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-05T22:10:10.545Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210474983876943');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Competitor Investigation ', 'https://docs.google.com/spreadsheets/d/16NJi3xNnJF46ziahmf25ToimDhMkajhHGMhJpC-LsGU/edit?usp=sharing

https://giftenmarket.com/

How to do it accordnng to backlinko 
https://docs.google.com/document/d/1bwJbQzIMV5SswgnIPkGDDl_8E3ZqYvUK9Kl5BGlk-j8/edit?usp=sharing

https://backlinko.com/competitor-traffic-analysis?utm_source=backlinko&utm_medium=email&utm_campaign=competitor_analysis', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 142, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-17T19:19:20.131Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209184145352999');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Get better booze boxes from Melissa', 'https://gorillashipper.com/', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 143, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-03-13T00:02:57.167Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209662463781597');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Respond to Donation Requests', 'I gave you all access to our Help Scout, I would like you to check in and respond to donation requestions 

Here is the sheet to use
https://docs.google.com/spreadsheets/d/1SIbOeCy-B9X7lCCfMOEZbxA5SZkWnWXULRIX8hSgJ9Q/edit?usp=sharing

Here is how to perform this task 
https://www.loom.com/share/d13ade4cf1a14e37a2695fe3ad9154c4?sid=34556424-b0a3-469b-8001-735652abd6e3

https://app.asana.com/app/asana/-/get_asset?asset_id=1209255100018844


', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 144, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-27T22:49:52.913Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209255100018845');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Get invoices to VAs for input ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 145, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-04-23T23:11:43.150Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210062945187956');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Create org chart', '', NULL, NULL, 146, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T05:08:02.287Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869654');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Payself back for legal and other costs', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 147, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:11:01.956Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869579');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Office Opps' LIMIT 1), 'Start new alcohol accounts', 'I put in apps with 
    https://my.sgproof.com - DONE
    https://app.erndc.com -N/A - cant get account 
    https://www.stonedistributing.com/contact - Waiting to fill out new app 
    Pac Beverage - Done
    https:///supplier.beerline.com- Processing 

Reached out to
    cal wine club
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 148, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-08T18:44:06.741Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208504435399769');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'BB Ideas', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 149, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-22T17:09:52.945Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1210054226074104');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Whiskey Warehouse Niche Liqour website', '', NULL, NULL, 150, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-08T21:26:30.310Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211592434098411');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Mine broken link check doc for content ideas', 'https://docs.google.com/spreadsheets/d/1rrPxteBNH-y-yst4mBe0n7c5nzRMnzU3ztA6xi2XS6c/edit?usp=sharing

    Look through previous top KW list to see what KW had good traffic and would be good to rank for 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 151, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-03-10T23:52:39.801Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209635950999916');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Creat Wholesale area for brobasket site with prices for boozeless baskets ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 152, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T00:20:14.049Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869550');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'CocktailCrates.com', 'cocktail focused gift baskets
gender neutral 

', NULL, NULL, 153, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:20:11.621Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925934045238');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'TikiCrates.com', '', NULL, NULL, 154, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:24:37.034Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925934045240');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Engraved glass gift', 'engraved glass with different booze inside gift also one for beer

Could be a beer glass with a single beer 

A cocktail glass with a a bouquet of minis 

Would be cheaper  and just in a box ', NULL, NULL, 155, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:25:47.396Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925934045248');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'partnership with dad beer with a basket with their beer in it', '', NULL, NULL, 156, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:26:38.088Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925934045250');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), '- partner with cocktail, whiskey, beer, tiki and ? influencers and YouTubeers', '', NULL, NULL, 157, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:26:45.837Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925934045252');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'cocktail cards like nipyata had', 'hold a single mini bottle inside 
person would be able to pick the bottle they want ', NULL, NULL, 158, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:27:18.322Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869448');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'curiosity crates / Kid Crates - kits and games for kids', 'Creeates for kids that have fun kits to build or other arts and crafts inside 

http://kidcrates.com/
http://kidkrates.com/
Gift baskets/boxes for kids', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 159, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:31:50.114Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869459');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'ship dummy bottles to nono states and have alcol delievers from our partners', '', NULL, NULL, 160, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-29T18:32:31.764Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869463');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Get Liqour establishment leads for B2B', 'Can use https://restaurantactivityreport.com/  to buy leads to follow up on for B2B outreach', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 161, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-09-09T19:02:18.957Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208265156484124');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), 'Post Pilot camapgin to all past customers ', '', NULL, NULL, 162, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-09-24T19:21:37.645Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208393009737766');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'IDEAS' LIMIT 1), '(untitled)', 'https://app.asana.com/app/asana/-/get_asset?asset_id=1208633225336152

https://ingoodtaste.com/products/boisset-collection-advent', NULL, NULL, 163, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-28T15:23:17.417Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208633225336149');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Sticker Machine for Custom lables', 'https://cricut.com/en-us/cutting-machines', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 164, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-03T19:39:54.158Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1211547463784018');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), '- send cease and desist to bro crates', 'Find a lawyer to be my "go to" lawyer (Sean lowe?)
Send letter ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 165, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-29T23:34:23.242Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207480787035458');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Looking into subleasing warehouse space', 'Chunker.com', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 166, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-04-08T01:44:25.129Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207480787035616');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Optimzie etsy and launch ads', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 167, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-04-03T19:49:39.743Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209875886034378');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Influncers', '', NULL, NULL, 168, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T05:14:24.526Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869685');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Get wholesale price list ', 'Whilesale Prices 
https://docs.google.com/spreadsheets/d/1COnjPIjOdicy_8wFDCBXDdIo9k99zISXLX6SuceDRLc/edit?usp=sharing

Free Shipping on orders over $XXXX? ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 169, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T00:20:10.257Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869548');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Plan to sell before liqour licsense - review and add more', '    building baskets without booze then bring to make to fulfill with liquor in them 
    Cant really sell the mini bottle baskets if we do this 
    getting email together for mark to send out 
https://docs.google.com/document/d/1L0EGxmSXwLxUaXCu-yqIDg3xGpxyX6BuowZeErKnIzM/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 170, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T00:20:30.547Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869552');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Complete' LIMIT 1), 'plan to be the top ten ', 'https://docs.google.com/spreadsheets/d/1cuXOcy_4YiSPs01OVTIWVFCKmBjRRLiQ0Bbn-0zUi1M/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 171, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-10T18:58:04.282Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1209122735848382');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Complete' LIMIT 1), 'Launch Plan', '', NULL, NULL, 172, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-30T04:44:48.951Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1207925935869627');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Complete' LIMIT 1), 'Create step by step Marketing Plan', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 173, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-10T19:31:08.721Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208522660275100');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1207217112591007'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1207217112591007') AND name = 'Complete' LIMIT 1), 'IDEA - Whiskey Taster Box set', 'Engraved wood box
    glass(S)
    375ml bottle or whiskeyor scotch 
    book on how to taste whiskey? 
    ? 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 174, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-10T00:36:17.583Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1207217112591007/task/1208940828948944');

-- BroBasket Email Calender (21 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('BroBasket Email Calender', 'red', '1208530832649540');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1208530832649540'), id FROM people WHERE email = 'drew@thebevconnect.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1208530832649540'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), 'DONE', 2);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), '2026-09-03_BackToSchool_W4_LaborDayEarned — Thu Sep 3, 10am PT', 'BTS W4 — Labor Day: You Earned This

Send specs

    Send: Thursday Sep 3, 2026, 10:00am PT — smart sending ON (ahead of Labor Day Mon Sep 7; Thursday send avoids the holiday itself)
    Audience: Active Engaged 90 Days
    Offer: 10% off, code SCHOOL10, through Sep 10
    Klaviyo draft: https://www.klaviyo.com/campaign/01KZVY4BPZHVZSNHBPFWGN8M6C/wizard

Subject A/B

    A: You earned this three-day weekend
    B: Month one: survived
    Preview: Month one: done. Toast the survivors — 10% off with code SCHOOL10.

Angle

    Permission-to-spend closer (Tax Day "You did your taxes. Now do something for yourself." pattern) aimed at the first month of school being done
    UTM slug: backtoschool-laborday-sep2026
    Fragment to be produced in project chat before Sep 1
', NULL, '2026-09-03'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-12T21:31:58.026Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1217434120801131');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), '2026-09-10_BackToSchool_W5_LastCall — Thu Sep 10, 10am PT', 'BTS W5 — Last Call: SCHOOL10 Ends

Send specs

    Send: Thursday Sep 10, 2026, 10:00am PT — smart sending ON
    Audience: Active Engaged 90 Days — per series rule, do NOT suppress prior converters
    Offer: 10% off, code SCHOOL10 — advertised deadline Sep 10 at 11:59pm PT; code actually deactivates Sep 14 (silent grace period for stragglers, do not mention in copy)
    Klaviyo draft: https://www.klaviyo.com/campaign/01KZVY4K4GWQXBXNJXZMHZEEK4/wizard

Subject A/B

    A: Last call: SCHOOL10 ends tonight
    B: This one graduates at midnight
    Preview: The back-to-school discount graduates at midnight. 10% off — one more pass.

Angle

    Calm urgency, DADEARLY last-call pattern — "we told you" energy, not panic
    UTM slug: backtoschool-lastcall-sep2026
    Fragment to be produced in project chat before Sep 8
    After send: manually deactivate SCHOOL10 in Shopify on Sep 14
', NULL, '2026-09-10'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-12T21:31:57.945Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1217433978027589');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), '2026-08-27_BackToSchool_W3_RealityCheck — Thu Aug 27, 10am PT', 'BTS W3 — Week-Two Reality Check

Send specs

    Send: Thursday Aug 27, 2026, 10:00am PT — smart sending ON
    Audience: Active Engaged 90 Days
    Offer: 10% off, code SCHOOL10, through Sep 10
    Klaviyo draft: https://www.klaviyo.com/campaign/01KZVY45BV9XFCSBZ2EEX0Z3W0/wizard

Subject A/B

    A: Week two. How''s everyone holding up?
    B: BACK TO SCHOOL RECAP:
    Preview: The lunchbox count is climbing. Your recovery basket is 10% off with SCHOOL10.

Angle

    Receipt-style checklist device (Tax Day pattern): "BACK TO SCHOOL RECAP: Packed 47 lunches / Forgot picture day / Signed something without reading it"
    Parent-survival angle, whiskey/beer forward, "Pick Your Recovery Plan" grid callback
    UTM slug: backtoschool-recap-aug2026
    Fragment to be produced in project chat before Aug 25
', NULL, '2026-08-27'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-12T21:31:57.940Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1217433999713713');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), '2026-08-20_BackToSchool_W2_TeacherThankYou — Thu Aug 20, 10am PT', 'BTS W2 — Teacher Thank-You

Send specs

    Send: Thursday Aug 20, 2026, 10:00am PT — smart sending ON
    Audience: Active Engaged 90 Days (no converter suppression between sends)
    Offer: 10% off, code SCHOOL10, through Sep 10
    Klaviyo draft: https://www.klaviyo.com/campaign/01KZVY3YMAMXBT9Q9ZF2MNG8SJ/wizard

Subject A/B

    A: Teachers deserve more than an apple
    B: The real back-to-school MVPs
    Preview: Send the person actually surviving back-to-school a real thank-you. 10% off.

Angle

    Thank-you gifting for teachers, coaches, and the friend running carpool — wine/food and non-alc forward alongside whiskey/beer
    UTM slug: backtoschool-teacher-aug2026
    Fragment to be produced in project chat before Aug 18
', NULL, '2026-08-20'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-12T21:31:57.927Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1217434120739108');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), '2026-08-13_BackToSchool_W1_Kickoff — Thu Aug 13, 10am PT', 'BTS W1 — Kickoff: You Survived Summer. Barely.

Send specs

    Send: Thursday Aug 13, 2026, 10:00am PT — smart sending ON
    Audience: Active Engaged 90 Days (HelpScout-only profiles excluded via account-level suppression)
    Offer: 10% off, code SCHOOL10 — customer-facing deadline Sep 10 (code live through Sep 14 grace)
    Klaviyo draft: https://www.klaviyo.com/campaign/01KZVY3RCS71HT9Y3BYZY47X9Y/wizard

Subject A/B

    A: You survived summer. Barely.
    B: Back to school. Back to chaos.
    Preview: 10% off survival baskets with code SCHOOL10 — for the adults holding it together.

Build

    Clone Template Test 1 (RiBs3m), paste W1 fragment into the HTML block (hero: chalkboard green, story: cream, "No homework involved" closer)
    Primary CTA: https://thebrobasket.com/collections/gift-baskets-for-men
    UTM slug: backtoschool-kickoff-aug2026
    Verify SCHOOL10 is live in Shopify Admin before scheduling
    Test send to James, click every link, then schedule
', NULL, '2026-08-13'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-12T21:31:57.921Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1217434077551724');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Father''s Day 2026 — Email 1 of 5 — One Month Out (May 21)', 'HANDOFF BRIEF — Father''s Day 2026 Series, Email 1 of 5

Context

    Handing off to external email designer. Full SOP, Master HTML Template, and brand voice references are in the BroBasket Email Campaigns Claude project.
    Use the standard 3-prompt workflow: Brief → Canva → HTML swap.
    Opens the new Father''s Day series. DADEARLY (10% off) expired May 15, so we''re entering a no-discount phase.

Campaign details

    Send date: Thursday May 21, 2026, 10:00am PT
    Audience segment: Engaged 90 days
    Suppress: None (fresh series start)
    Offer: None for this send. If James wants a new code attached, decide before designer starts.
    Smart sending: ON
    From name: BroBasket
    Reply-to: hello@thebrobasket.com

Angle & theme

    One month until Father''s Day. Open the series with the calm, paternal "we''ve been here before" energy from the "Buy Early. Win Father''s Day." send. No panic — just a heads-up that the clock has started.

Suggested subject line options (A/B test)

    One month. Dad. You.
    Father''s Day is closer than you think.
    30 days. Tick tock.

Primary CTA destination

    https://thebrobasket.com/collections/gift-baskets-for-men

UTM slug

    fathersday-onemonth-may2026

Voice / structure notes

    Visual continuity with "Buy Early. Win Father''s Day." — light blue palette OK, refresh is fine.
    Story block: setup-twist device. Skeleton: "EVERY YEAR YOU DO THIS." → wait until the weekend before → panic → overpay for something forgettable.
    Product grid: 3 stacked horizontal tiles (Whiskey / Beer / Non-Alc) — mirrors Tax Day "Pick Your Recovery Plan" pattern.
    Closing: echo our reassurance closer pattern ("Future you will be glad this is already done.").
', NULL, '2026-05-21'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-20T22:51:25.997Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1214986733209118');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Email 19 — June 19 | Final Call — Express Closes Tonight', 'THEME: "Today Is Officially the Last Day. Express Shipping Closes Tonight."
Tone: High energy, never frantic. Fun urgency — buzzer beater energy.

SUBJECT LINES:
1. "Last Call. Express Shipping Closes Tonight."
2. "Today''s It. Last Day to Get Dad''s Gift There on Time."
3. "Final Call for Father''s Day — Express Closes Tonight."
4. "It''s June 19th. You Know What That Means."

PREVIEW TEXT: After tonight — we love you, but we can''t make promises.

SHIPPING INFO:
- Express shipping closes TONIGHT
- After tonight: no guaranteed Father''s Day delivery

STRUCTURE:
1. Open With Energy: This is it. June 19th. Last day we can guarantee delivery by Father''s Day. Express closes tonight.
2. Last Chance Reassurance: You haven''t missed it. Order right now and Dad gets his gift on Sunday. We''ve done this thousands of times.
3. Two Options — Make It Easy:
   Option A: Order now, express shipping, arrives by June 21 ✓
   Option B: Wait → gift card → Dad''s face → you feel bad
4. Featured Basket: Best seller only — big photo, name, price, one massive CTA button.
5. Single CTA: "ORDER NOW — Last Day →"

DESIGNER NOTE: Most urgent email in the series. Big bold headline. Single oversized CTA button. Two-scroll email max. Countdown language throughout.', NULL, '2026-06-19'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-08T21:18:11.117Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213987528322948');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'June 2026 Father''s Day Email Campaign', 'Full Father''s Day email campaign for June 2026. 9 emails total — 2 emails Week 1, 3 emails Week 2, 4 emails Week 3 leading up to Father''s Day June 21. Shipping cutoff alerts begin June 12. All full price — no discount codes. East Coast ground cutoff: June 12. West Coast ground cutoff: June 18. Express shipping available through June 19.', NULL, '2026-06-21'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-08T21:15:08.070Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213987502438427');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'End of Mar - Easter', 'Hey Chris, I have been slacking here, wanting to put together some emails for Easter. 

here is the doc I created with the briefs 
feel free to riff and tweak how you see fit 

https://docs.google.com/document/d/15FrRIfOuDarWnDBAEdfxEJZkH0dYmnGb/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-25T20:10:09.973Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213811647350721');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Audit Email Flow - Sunset Unengaged Subscribers - Customer vs. Non-Customer', 'We have seen this flow perform well for other brands. 

Seeing if we can get it to do better for us.

Let me know your thoughts 

https://app.asana.com/1/1200828512126939/profile/1202577453372664 I took a look at the Sunset Flow & it’s currently hitting people who haven’t engaged in 365 days, so low opens and zero revenue aren’t surprising. We should test moving it earlier (120–180 days), space the emails out a bit more, and add a stronger incentive (If we have the margins to do so), especially separating messaging more clearly for customers vs. non-customers.

Here''s a more https://docs.google.com/document/d/1iCHWh2c_uieSXbOrgAwdJ7QbDgbF18bqG4zJEOP_5Gg/edit?usp=sharing if your curious, but there is definitely room for improving this flow.', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-18T21:54:14.268Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213344744168041');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Feb 26 - Post Valentines Day ', '', NULL, NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-18T21:50:18.644Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213344744168038');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Update Upsell email ', '', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-29T01:02:57.994Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1209255100018884');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Update Customer Win-Back', 'I put togher a basic win-back email flow, please update it. 

I would also add a last email with a 10% discount as well 

The goal is more of a reminder for them to buy again around the same time they did last year ', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-29T00:48:14.141Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1209255100018878');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Update Review Reqest Emails ', 'https://app.asana.com/0/profile/1206892488704423 We are going to start colleting reviews via Klaviyo and is mostly setup, I just wanted the emails to look a bit better. 

if you could spruce them up and offer a 10% discount for people who leave reviews 

we would also have to setup a flow up email to give people their 10% for leaving a review 

let me know if you have questions 
thanks ', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-29T00:30:22.995Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1209255100018867');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Update Thank you emails ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-01-29T00:37:16.546Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1209255100018874');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Template for weekly emails ', 'https://app.asana.com/0/profile/1206892488704423 its finally time we ramp up emails, I would like to make the copy of them but you can, insert and modify as needed.

Since we will be cranking out 12 emails per month, lets just make 1-2 templates we can use over and over and just change out the top image and text, easy peasy. 

I used this one and I like this general format, I want to use a header with some links in here but it would be good for the background to match the email color background
https://www.klaviyo.com/campaigns/list?appBarNav=true&archived=false&endDate=2025-06-26&isAbTest=false&limit=25&metricId=VLG57L&offset=0&pagination=true&sort=0&startDate=2025-05-27

we are going to focus on sending to these lists on the regular 
210 Day Engaged - May 25''
Engaged (180 Days) Loose

Dont send to 
Bad Mofos
Unengaged 180 Days

twice a month we will include the Engaged (180 Days) Loose to keep them a bit engaged 

I will start to work on copy for all these tomorrow (maybe tonight) so we can get one out starting tomorrow 

Cheers! 

', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-26T23:51:42.587Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1210651797497441');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'Create BroBasket emails for Month ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-10T22:55:25.652Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1218380881019619');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'April 26 - BroBasket Emails', ' — Week of April 7–8 " Men don''t need a reason to send a great gift. Lean into the "no occasion needed" angle — position BroBasket as the go-to for spontaneous gifting. Good for re-engaging the list mid-month with zero pressure.
Email 3 — Week of April 14–15 (Tax Day proximity) "Treat Yourself / Screw Tax Day" angle Tax Day is April 15. This is a layup — dark humor, relatable frustration, "you deserve a drink after filing." Could double as a self-gifting push or a "send one to your accountant" angle. Very on-brand for BroBasket''s voice.
Email 4 — Week of April 21–22 Early Father''s Day Teaser / "Don''t Wait Until June" Father''s Day is June 15 this year. Getting a "heads up — don''t be that person who waits until the last minute" email out in late April plants the seed early, captures organized shoppers, and starts warming the list before your main Father''s Day push in May.', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-02T20:19:12.098Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213912947190360');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'To Do' LIMIT 1), 'May 26 - BroBasket Emails ', '', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-08T20:54:22.068Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1213986965656678');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'DONE' LIMIT 1), 'Nov 25 Emails', '', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-21T20:42:01.695Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1211710747763622');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1208530832649540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1208530832649540') AND name = 'DONE' LIMIT 1), 'Dec 25 Emails', 'UPS 3 Day Select®
December 19th
UPS 2nd Day Air®
December 22nd
UPS Next Day Air®
December 23rd


', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-21T20:42:08.558Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1208530832649540/task/1211710747763624');

-- BroBasket - Corp Sales CRM (4 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('BroBasket - Corp Sales CRM', 'magenta', '1211939836751304');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211939836751304'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), 'Opportunities', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), 'Past Customers', 2);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211939836751304') AND name = 'Opportunities' LIMIT 1), 'INFO', 'Corp One Page SIte
https://brobasket.carrd.co/

Zest 

Corp link on site 
https://thebrobasket.com/collections/corporate-gifts-for-men

', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-24T23:00:33.088Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211939836751304/task/1212077753583359');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211939836751304') AND name = 'Opportunities' LIMIT 1), 'Suzanne Schill', 'https://secure.helpscout.net/conversation/3161629980/323039?viewId=1270400

Good to connect with you too. As Suzanne mentioned, I am currently supporting this project this year. I''ll loop Suzanne back in at a later time so we do not fill up her inbox.

As she mentioned, we are looking at baskets that do not include alcohol but do include snack-type items such as a combo of jerky or popcorn or other savory/sweet non-perishable food items. We will be interested in about 50-60 baskets with a price range of $150 - $180 per basket.

Please let me know if there are any other questions I can answer for you.


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-12-06T18:10:14.027Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211939836751304/task/1212321887413914');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211939836751304') AND name = 'Opportunities' LIMIT 1), 'Michael Cook', '865-256-2293 
Looking to send out a few new clients gifts a month ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-06T19:09:06.695Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211939836751304/task/1213551571324842');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211939836751304'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211939836751304') AND name = 'Past Customers' LIMIT 1), 'Cathy Mader', 'cathy@madersupply.com
Past customer instantly connect

Past convo from 22''
https://secure.helpscout.net/conversation/2106304387/223662


', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-24T23:01:48.615Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211939836751304/task/1212077753583361');

-- BoozeFinders (58 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('BoozeFinders', 'pink', '1212718361405821');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1212718361405821'), id FROM people WHERE email = 'drew@thebevconnect.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1212718361405821'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1212718361405821'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), 'Strategy & Positioning', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), 'Website', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), 'Martketing', 4);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P3] Booze Finders — correct Config MonthlyBudget: $4,200 → ~$7,000', 'CHANGE: Google Sheet `GoogleAds_Check_Data (Script Output)` → tab `Config` → row `Booze Finders 2.0` → MonthlyBudget: 4200 → 7000

WHY: Config carries $4,200 against $6,972.23 of actual Last30 spend. Stale since at least 2026-10-06. Claude reads Config every run — every pacing call against this figure is guesswork until it is corrected.

Sheet: docs.google.com/spreadsheets/d/1dBOxjwFQKrwi1QAUDNMTz2qWo3iapSJkWb_L8prd6Fo

NOTE: if the $40/day advent Search campaign launches as planned, add another ~$1,200/month on top — consider setting this to $8,200.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:07.251Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219651342231192');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P3] Booze Finders — check Merchant Center diagnostics (400 SKUs spend, no conv)', 'Merchant Center diagnostics are not in the script export and there is no API path in this pipeline — this is manual.

CHECK: Merchant Center → Products → Diagnostics for the Booze Finders feed.

THIS MATTERS MORE HERE THAN IN THE OTHER TWO ACCOUNTS:
- 841 SKUs seen (90d)
- only 91 converting
- 400 with spend and NO conversions
- 351 served but never clicked
- $14,771.52 Shopping spend (90d)

A click-through rate that low across that many SKUs usually points at titles, images or price competitiveness rather than bidding.

ALSO: alcohol feeds carry category-specific restrictions that generate silent item-level disapprovals. Worth a specific look.

Paste any disapprovals or item-level issues into the next Claude run and they will be triaged against Products_90d spend data.

STANDING CONTEXT: site CVR is 1.06% against BroBasket''s 3.08% and Bounty''s 3.53% in the same vertical. 14,171 clicks produced 150.54 conversions. Getting to 1.50% is worth roughly +$7,500/month at constant spend — more than every bidding lever in this account combined. That is a website job, not an ads job, but the feed is the half of it that lives here.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:07.240Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219651778548767');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P0] Booze Finders — build the advent/whiskey Search campaign (~3 weeks to peak)', 'Recommended 2026-10-12 and 2026-10-02. Still not built. The account has 3 campaigns and no Search campaign; 18 keywords, zero serving.

WHY IT IS URGENT: the advent-calendar cluster earned $2,306.71 on $1,034.43 over 30 days inside Shopping (2.23 ROAS blended), with whiskey/whisky advent at 3.61 and alcohol advent at 3.58. Advent peaks in November and is worth nothing by March. It is 2026-10-15 — roughly three weeks to get a campaign live and out of learning, down from four weeks on 10/12. 22 qualifying search terms worth $4,043.89/30d are converting in Shopping with nowhere to harvest them into.

EXACT BUILD:
  Name:      S | US | Whiskey + Advent Harvest | Max Clicks
  Networks:  Google Search only. Search partners OFF. Display OFF.
  Geo:       United States — "Presence" (NOT "Presence or interest")
  Budget:    $50/day
  Bidding:   Maximize Clicks with a $1.50 max CPC bid limit
  Match:     Exact + phrase ONLY. No broad match — a brand-new campaign is by definition not optimised, not on smart bidding and not at goal.

  Ad group 1 — advent: whiskey advent calendar, tequila advent calendar 2026, bourbon advent calendar 2026, alcohol advent calendar 2026, whisky advent calendar, advent calendar whiskey, alcohol advent
  Ad group 2 — whiskey & bourbon brands: pappy van winkle, jameson black barrel, basil hayden, best irish whiskey, 20 year old whiskey
  Ad group 3 — tasting kits & sets: bourbon tasting kit, bourbon tasting kits, bourbon tasting set, tequila tasting set, tito''s vodka gift set
  Ad group 4 — gifting: whiskey gifts, bourbon gifts, gifts for whiskey drinkers, mini alcohol bottles, small alcohol bottles

BIDDING GATE: starts at zero conversions, so Maximize Clicks or manual CPC only — not tCPA, not tROAS, not Maximize Conversions. Revisit at 15 conversions (then Maximize Conversions) and again at 30 (then tCPA/tROAS).

BUDGET FLOOR: $50/day at an expected $1.00–1.50 Search CPC gives 33–50 clicks/day, comfortably clear of the 10 clicks/day floor.

FUNDING: $25/day comes from pausing YE | pmax - converters - MaxValue (see the paired task). The other $25/day is net new — justified at an account ROAS of 2.65 against a 1.80 break-even, on terms that are already proven converters.

SECOND REASON THIS MATTERS: no ad test is possible in this account until a Search campaign exists. Zero RSAs serving today.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-17'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.010Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219549772379037');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P1] Booze Finders — log FAILED test and pause YE | pmax - converters - MaxValue', 'TEST ④ — FAILED. Launched ~2026-10-01, flagged for pausing on 2026-10-12, still enabled and now spending its full $25/day.

PASTE-READY TRACKER ROW:
LABEL: "YE | pmax - converters - MaxValue — New PMax at $25/day, 9/15–10/14"   → FAILED

           Cost      Revenue   ROAS     CPA      AvgCPC  Conv     Clicks   AOV
  Before   $106.12   $418.11   3.94     $53.06   $0.65   2.00     163      $209.06
  After    $180.84   $588.77   3.26     $60.28   $0.62   3.00     290      $196.26
  Change   +70.41%   +40.82%   -17.37%  +13.61%  -4.22%  +50.00%  +77.91%  -6.12%

WHY FAILED: the 3.26 ROAS looks fine and means nothing — three conversions in thirty days is not a sample. It breaks three course rules at once:
- 3.00 conv/30d on a value-based smart bidding strategy. Under 15 conversions the course allows manual or Max Clicks only. Straight violation.
- $25/day against PMax''s $50/day minimum, and 3 conv/month against the 50 conv/month PMax needs to run smoothly.
- 9.7 clicks/day, marginally under the 10 clicks/day budget floor.

Funding it to $50/day will not get it to 50 conversions a month at this CPC.

EXACT CHANGE: YE | pmax - converters - MaxValue → PAUSED. Fold the converter audience signal into YE | pmax - feedonly - tROAS 350%, which clears the 50-conversion threshold (51.96 conv/30d) and can actually use the signal. The freed $25/day goes to the Search campaign build.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-17'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.010Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219549604830595');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P2] Booze Finders — fix Config: MonthlyBudget $4,200 → ~$7,200', 'Config MonthlyBudget reads $4,200. The Last30 run rate is $6,814.19 over 30 days = ~$227/day ≈ $6,900–7,100/month — roughly 62–69% over the Config figure. The gap was +41% at the Q3 review on 2026-10-06 and has widened since.

This is not an overspend alarm: the money is being spent at 2.65 ROAS against a 1.80 break-even, and the account scaled 43% this window while holding ROAS dead flat (-0.34%), which is the textbook scaling result. The problem is that Config is the file read every run to judge pacing, so every pacing call in every daily, weekly and monthly check is currently a guess.

DECIDE ONE: either raise MonthlyBudget to ~$7,200 to match the intended spend, or conclude the scaling was unintentional and cap it. Both are fine; leaving the two numbers 69% apart is not.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.001Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219549577520947');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P1] Booze Finders — apply the two bid-target cuts (one change per campaign)', 'Recommended 2026-10-12, neither applied. Both campaigns are RANK-limited with 0% of IS lost to budget, so the bid target is the only lever — more money will not spend.

CHANGE 1: YE | shopping - catch-all — tROAS 250% → 225% (-10%)
  Rank loss 76.74%, SearchIS 23.26%, and ~$65/day of unused headroom under a $200/day cap.
  It scaled 50% and IMPROVED ROAS this window: Prev30 $2,626.39/52.42 conv/2.32 ROAS → Last30 $3,933.44/81.58 conv/2.57 ROAS (cost +49.8%, conv +55.6%, ROAS +10.8%, CPA -3.8%). Contribution doubled. That is the clean evidence the cut is safe — there is ROAS headroom above the 1.80 break-even to trade for volume.
  VERIFY THE REAL TARGET IN THE UI FIRST. Campaign_Settings reports BidStrategy = TARGET_ROAS with the tROAS column BLANK, which usually means a portfolio bid strategy the script cannot read. The campaign NAME says 250% but the name is not the setting. Check Campaign → Settings → Bidding, then apply -10% to whatever the real number is.

CHANGE 2: YE | pmax - feedonly — tROAS 350% → 300% (-14%)
  Delivering 2.72 against a 3.50 target — missing it by 22%. 73.42% of IS lost to rank says the same thing. A target the campaign consistently cannot reach does not produce better ROAS; it throttles delivery while Google bids toward a number it never hits.
  This window: Prev30 $2,136.28/48.00 conv/3.07 → Last30 $2,699.91/51.96 conv/2.72 (cost +26.4%, conv +8.3%, ROAS -11.4%). Returns are already diminishing — 26% more spend bought 8% more conversions — which strengthens the case for freeing the target rather than holding it.
  58+ conv/30d clears the 30-conversion gate, so the campaign has the data to support the change.

BOTH are within the 10–20% increment rule. One change per campaign per window — do not also touch budgets. Hold 1–2 weeks, re-read 2026-10-29.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-18'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:29:01.011Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219549896078031');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-15] Catalog check, then negative 4 dead advent flavours ($136.05/30d)', 'Account: Booze Finders 2.0 (906-036-8362)
Campaign: YE | shopping - catch-all - tROAS 250%
Setting: Campaign-level negative keywords, PHRASE match

STEP 1 — DIAGNOSE FIRST. This is a catalog question, not a bidding one.
Check the Shopify catalog (sgproof.myshopify.com / boozefinders.com) for wine, scotch, liquor and vodka ADVENT CALENDARS.
  - NOT STOCKED -> add all four negatives below. The query can never convert.
  - STOCKED     -> this is a feed-title or landing-page problem and a negative BURIES it instead of fixing it. 230 clicks arriving on a product you sell and converting zero times is a page problem.

STEP 2 — IF NOT STOCKED, add these as PHRASE negatives:
  "wine advent calendar"     777 impr,  33 clicks, $24.85, 0.00 conv
  "scotch advent calendar"  2,291 impr,  59 clicks, $38.28, 0.00 conv
  "liquor advent calendar"  3,194 impr, 109 clicks, $57.76, 0.00 conv
  "vodka advent calendar"   1,019 impr,  29 clicks, $15.16, 0.00 conv
  THEME TOTAL: 7,281 impr, 230 clicks, $136.05, ZERO conversions

As a theme this clears the $80 break-even-CPA floor. No individual term does. And it will cost MORE than $136 next month as advent demand rises into the November peak — so this is worth ten minutes today.

*** DO NOT NEGATIVE THESE — they convert ***
  whiskey/whisky advent: 3.61 ROAS on $332.05 — SCALE IT
  alcohol advent:        3.58 ROAS on $94.40  — SCALE IT
  bourbon advent:        1.32 ROAS on $274.08 — below break-even but CONVERTING
  tequila advent:        1.58 ROAS on $146.84 — below break-even but CONVERTING
The whole advent cluster is PROFITABLE at 2.23 ROAS ($1,034.43 -> $2,306.71). Whiskey and alcohol advent are carrying the rest.

bourbon advent and tequila advent together are $420.92/30d below the 1.80 break-even while still converting — that needs a PRODUCT-GROUP BID SPLIT inside the Shopping campaign or a price/feed fix on those SKUs, NOT exclusion.', NULL, '2026-10-15'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.880Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413897952043');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-17] Fix Config: Booze Finders MonthlyBudget $4,200 → ~$7,200', 'Sheet: GoogleAds_Check_Data (Script Output), tab ''Config''
Row: Booze Finders 2.0 (906-036-8362)
Column: MonthlyBudget
FROM: 4200
TO:   7200  (or decide the scaling is unintentional and cap the campaigns instead)

THE GAP: Last30 run rate is $234.56/day = approx $7,100/month. That is 69% OVER the $4,200 Config figure. At the Q3 review (2026-10-06) the gap was +41% — it has WIDENED.

THIS IS NOT AN OVERSPEND ALARM. The money is being spent at 2.55 ROAS against a 1.80 break-even, and the account scaled 65% while holding CVR exactly flat. That is a good result.

BUT: Config is the file I read every run to judge budget pacing. At a 69% error the pacing check is MEANINGLESS — every run will report a false overspend and the real signal gets lost.

TWO VALID ANSWERS, pick one:
  (a) The scaling is intentional -> raise MonthlyBudget to ~$7,200.
  (b) The scaling is NOT intentional -> cap the campaign daily budgets back toward $140/day total and say so.

Either way, do not leave Config at $4,200.

NOTE: if W1012-11 (new Search campaign, $50/day) goes live, forward run rate rises again — factor that into whichever number you pick.', NULL, '2026-10-14'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.433Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413975091644');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-19] Export Auction Insights for Booze Finders (none exists)', 'Account: Booze Finders 2.0 (906-036-8362)

No Auction Insights export exists for this account — flagged in the Q3 review (2026-10-06) and still missing. BroBasket''s exports live in Drive folder 1--o6VfqKNJ9zwqaDDZN1458OK-1oiXd_ but there is nothing for Booze Finders or Bounty Basket.

WHY IT MATTERS THIS WEEK: every point of lost impression share in this account is lost to RANK, none to budget.
  YE | shopping - catch-all: 23.26% SearchIS, 76.74% lost to rank
  YE | pmax - feedonly:      26.58% SearchIS, 73.42% lost to rank
Roughly three-quarters of the available auction is going to someone else, and the API cannot tell us WHO. Auction Insights is the only source.

That answer changes the strategy. If it is a handful of specialist competitors, the tROAS reductions in W1012-13/14 will buy share. If it is Amazon and Total Wine, it will not, and the winnable ground is specificity and feed quality instead.

HOW: Google Ads -> Insights and Reports -> Auction Insights. Segment by campaign. Export CSV to the Marketing folder in Drive (My Drive -> BroBasket 2024 and Beyond -> Marketing) and I will analyse it on the next run.

NOTE: Ahrefs'' paid index does NOT reliably see Shopping, PMax, or keywords under ~500 volume — it reported $0.00 of paid activity for boozefinders.com. Absence of Ahrefs paid data is never evidence a competitor is not bidding.', NULL, '2026-10-23'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.466Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413897925514');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-11] BUILD THE SEARCH CAMPAIGN — harvest 22 terms before the November advent peak', 'SECOND-HIGHEST-PRIORITY ACTION ACROSS ALL THREE ACCOUNTS. TIME-CRITICAL.

Account: Booze Finders 2.0 (906-036-8362)
Action: CREATE a new Search campaign. There is currently NO Search campaign in this account — 18 keywords, ZERO serving. This is Grow My Ads blueprint step 7, open since September.

THE PRIZE: 22 search terms with >=30 impressions and >=1 conversion are already converting in Shopping, worth $4,043.89 revenue in 30 days, and NONE of them is a keyword. All 30 of 30 converting terms in this account are unharvested.

WHY NOW: 7 of the 22 are advent-calendar terms (35,664 impr / 706 clicks / 13.08 conv / $2,189.08 revenue / 4.77 ROAS). Advent peaks in NOVEMBER and the category is worth nothing by March. It is 2026-10-12 — roughly three weeks to get live and out of learning before the peak.

EXACT SETUP:
  Campaign name: S | US | Whiskey + Advent Harvest | Max Clicks
  Networks:      Google Search only. Search partners OFF. Display OFF.
  Geo:           United States — ''Presence'' (NOT ''Presence or interest'')
  Daily budget:  $50.00
  Bidding:       Maximize Clicks with a max CPC bid limit of $1.50
  Match types:   EXACT + PHRASE only. NO BROAD.

AD GROUP 1 — advent (exact + phrase):
  whiskey advent calendar      16,056 impr  5.83 conv  5.44 ROAS
  tequila advent calendar 2026 10,331 impr  1.25 conv  2.25 ROAS
  bourbon advent calendar 2026  5,906 impr  2.00 conv  2.29 ROAS
  alcohol advent calendar 2026  1,860 impr  1.00 conv  4.79 ROAS
  whisky advent calendar        1,161 impr  1.00 conv 12.21 ROAS
  advent calendar whiskey         302 impr  1.00 conv 56.11 ROAS
  alcohol advent                   48 impr  1.00 conv 66.51 ROAS

AD GROUP 2 — whiskey & bourbon brands (exact + phrase):
  pappy van winkle       2,643 impr  12.43 ROAS
  jameson black barrel   4,772 impr  11.64 ROAS
  basil hayden           4,488 impr   6.54 ROAS
  best irish whiskey     1,714 impr  32.38 ROAS
  20 year old whiskey       35 impr 266.05 ROAS

AD GROUP 3 — tasting kits & sets (exact + phrase):
  bourbon tasting kit     671 impr   2.78 ROAS
  bourbon tasting kits     67 impr 112.25 ROAS
  bourbon tasting set    182 impr   8.64 ROAS
  tequila tasting set    103 impr  50.90 ROAS
  tito''s vodka gift set   73 impr  92.93 ROAS

AD GROUP 4 — gifting (exact + phrase):
  whiskey gifts                424 impr  12.79 ROAS
  bourbon gifts                553 impr   8.74 ROAS
  gifts for whiskey drinkers    72 impr 149.91 ROAS
  mini alcohol bottles       1,570 impr  12.53 ROAS
  small alcohol bottles        316 impr 137.60 ROAS

BIDDING GATE: the campaign starts at ZERO conversions, so Maximize Clicks or manual CPC ONLY — not tCPA, not tROAS, not Maximize Conversions. Under 15 conv/30d the course allows manual or Max Clicks only. Revisit at 15 conv (-> Maximize Conversions) and again at 30 (-> tCPA/tROAS).

BUDGET FLOOR: account avg CPC is $0.49, so the 10-clicks/day floor costs $4.90/day. Search CPCs on these terms will run higher than Shopping''s — $50/day against an expected $1.00-1.50 CPC gives 33-50 clicks/day, comfortably clear.

FUNDING: $25/day from pausing YE | pmax - converters - MaxValue (task W1012-12). The other $25/day is net new — justified at an account ROAS of 2.55 against a 1.80 break-even, on terms that are already proven converters.', NULL, '2026-10-15'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.724Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413975127041');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-16] Do NOT negative ''bourbon advent calendar'' — script false positive', 'Account: Booze Finders 2.0 (906-036-8362)
Action: IGNORE the top entry on the Negative_Candidates tab. This is a guard task.

THE SCRIPT SAYS: ''bourbon advent calendar'' — 8,587 impr, 172 clicks, $113.95, ZERO conversions, ''zero conversions at or above spend floor''. At $113.95 it is the ONLY candidate in this account that clears the $80 break-even-CPA floor.

DO NOT ACT ON IT. The near-identical ''bourbon advent calendar 2026'' converts TWICE for $329.90 (5,906 impr, 2.00 conv, 2.29 ROAS). The bourbon-advent cluster as a whole spends $274.08 and returns $361.72.

Negativing it would kill your own category three weeks before its peak.

THIS IS A KNOWN SCRIPT DEFECT. The Q3 review (2026-10-06) found Negative_Candidates mis-flagged 68% of this account''s list ($169 of $248), ALL of it advent-calendar variants. The script still has no ConvertsElsewhere flag and no cluster-level check.

SCRIPT FIX NEEDED (export script, v4): add a ConvertsElsewhere column that checks whether a term — or a near-variant of it — converts in another ad group, campaign, or year-suffixed form before flagging it. Also raise SpendFloor from the flat $8 to 1x the account''s break-even CPA ($80 here, $120 BroBasket, $69 Bounty Basket).

This week BroBasket had 19 of 72 candidates mis-flagged ($296.50, 27%) on the same defect.', NULL, '2026-10-14'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.418Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219414057445799');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-12] Pause YE | pmax - converters - MaxValue — breaks three gates', 'Account: Booze Finders 2.0 (906-036-8362)
Campaign: YE | pmax - converters - MaxValue
Setting: Status
FROM: ENABLED ($25.00/day)
TO:   PAUSED

IT BREAKS THREE RULES AT ONCE:
1. SMART BIDDING GATE: 2.00 conversions/30d on MAXIMIZE_CONVERSION_VALUE, a value-based smart bidding strategy. Under 15 conv/30d the course allows manual CPC or Max Clicks only.
2. BUDGET FLOOR: 5.4 clicks/day vs the 10 clicks/day minimum.
3. PMAX MINIMUMS: $25/day vs PMax''s $50/day minimum, and 2 conv/month vs PMax''s 50 conv/month to run smoothly.

Last30: $106.12 spend, 163 clicks, 2.00 conv, $417.83 revenue, 3.94 ROAS.

The 3.94 ROAS looks good but it is TWO conversions — that is not a sample, it is noise.

WHY PAUSE RATHER THAN FUND IT: funding it to $50/day will not get it to 50 conv/month at this CPC. It cannot work at this size.

INSTEAD: fold the converter audience signal into YE | pmax - feedonly - tROAS 350%, which is already at 58 conv/30d — over the 50-conversion threshold — and can actually use the signal.

Frees $25/day toward the new Search campaign (task W1012-11).', NULL, '2026-10-14'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.432Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413897951940');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-14] Lower pmax-feedonly tROAS 350% → 300%', 'Account: Booze Finders 2.0 (906-036-8362)
Campaign: YE | pmax - feedonly - tROAS 350%
Setting: Target ROAS
FROM: 350% (3.50)
TO:   300% (3.00)  (−14%, inside the 10-20% rule)
HOLD: 2 weeks

WHY: it is missing its target by 23%. Delivering 2.69 against 3.50.

A target the campaign consistently cannot reach does not produce better ROAS — it just throttles delivery while Google bids toward a number it never hits. 73.42% of impression share lost to RANK says the same thing from the other direction.

Last30: $2,876.15 spend (+40% on Prev30), 58.00 conv (+33%), 2.69 ROAS (down from 3.02), $49.59 CPA.

Gate check: 58.00 conv/30d clears the 30+ threshold, AND clears PMax''s 50 conv/month — this is the ONLY PMax campaign across all three accounts large enough to run properly.

EXPECT: spend to rise and ROAS to settle near 2.6-2.8 — above the 2.60 account target and well above the 1.80 break-even. This is a deliberate volume-for-ROAS trade and the campaign has the conversion volume to support it.

READ IT PROPERLY: full 2-week window, conversions/revenue AND the ROAS/CPA trade-off together. Never a day or two.', NULL, '2026-10-15'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.425Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413897927810');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-13] Lower shopping-catch-all tROAS 250% → 225% (verify the real target in the UI first)', 'Account: Booze Finders 2.0 (906-036-8362)
Campaign: YE | shopping - catch-all - tROAS 250%
Setting: Target ROAS
FROM: 250% (2.50) — BUT SEE THE WARNING BELOW
TO:   225% (2.25)  (−10%, inside the 10-20% rule)
HOLD: 1-2 weeks

*** VERIFY BEFORE CHANGING ***
Campaign_Settings reports BidStrategy = TARGET_ROAS but the tROAS column is BLANK. That usually means a PORTFOLIO bid strategy the export script cannot read. The campaign NAME says 250%, but the name is not the setting.
Go to Campaign -> Settings -> Bidding, read the actual target, then apply a 10% cut to whatever the real number is.
(Script gap worth fixing: portfolio strategy targets are not being exported.)

WHY LOWER THE TARGET RATHER THAN RAISE THE BUDGET:
- 76.74% of impression share lost to RANK, 0.00% to BUDGET
- $65/day of unused headroom already sits under the $200/day cap ($135.15/day actual spend)
- SearchIS only 23.26%
- Rank loss is a bid/quality problem. More money WILL NOT SPEND. Raising the cap to $300 would change nothing.

WHY THERE IS ROOM:
ROAS held at 2.42 through an 83% spend increase (Prev30 2.44 -> Last30 2.42) against a 1.80 break-even. That is $0.62 of ROAS headroom to trade for volume. Conversions went 47.01 -> 78.96 (+68%) while AvgCPC actually FELL $0.48 -> $0.42.

Gate check: 78.96 conv/30d clears the 30+ threshold for tROAS comfortably.

ONE CHANGE PER CAMPAIGN PER WINDOW — this is the only change to this campaign.', NULL, '2026-10-15'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.443Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219413897941675');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[W1012-18] Replace the blended 1.80 break-even with per-tier numbers', 'Account: Booze Finders 2.0 (906-036-8362)
This is the highest-leverage NON-CAMPAIGN change available in this account.

THE PROBLEM: margin runs 50-65% BY TIER — taster sets high, gift sets mid, plain beer/booze lower (per the SOP). A single blended 1.80 break-even UNDER-BIDS the good tiers and OVER-BIDS the bad ones.

THIS WEEK''S DATA MAKES THE DISTORTION VISIBLE:
  tasting kits & sets cluster:  16.26 ROAS as a group ($114.10 -> $1,854.81)
  bourbon advent cluster:        1.32 ROAS ($274.08 -> $361.72)
  tequila advent cluster:        1.58 ROAS ($146.84 -> $232.67)
One blended target treats a 16-ROAS product tier and a 1.3-ROAS product tier identically.

WHAT TO DO:
1. Pull actual margin % for each tier: (a) taster/tasting sets, (b) gift sets, (c) plain beer/booze bottles.
2. Compute break-even ROAS per tier: 100 / margin %.
   e.g. 65% margin -> 1.54 break-even; 50% margin -> 2.00 break-even.
3. Record all three in the Config tab (new columns, or a note) so every future run reads them.
4. Then split the Shopping campaign''s product groups along those tiers so each can carry its own tROAS.

UNTIL THIS IS DONE every ROAS verdict in this account is approximate, and the advent flavour P&L above cannot be acted on precisely.', NULL, '2026-10-23'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:59:57.430Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219414057578946');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'BF CRO Punch List — Oct 2026 Audit', 'Parent punch list from the BoozeFinders top-down CRO audit (2026-10-08). Full audit: Claude project doc BoozeFinders_CRO_Audit_2026-10-08.md.

Core finding: price shock at cart. Engraved gift set PDP $115.95 -> cart $183.89 (+59%) before shipping. Every order silently gets Adult Signature $5.99 + ''Free'' card $1.95.

Subtasks are grouped by phase: P0 = Admin/config, P1 = Theme via GitHub, P2 = Data/infra, P3 = Validate. Owner tags: [Claude] = Claude can execute, [James] = needs a decision or Admin access.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-08T23:39:58.188Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219332421068106');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-20] Put the 110 uncollected products into collections', '110 live products (27%) sit in ZERO collections. 195 of 407 (48%) sit in <=1. Median collections per live product is 2 here, against 8 at BroBasket and 22 at Bounty Basket.

Until these are in collections you cannot build collection-based Shopping product groups or PMax asset groups. This is the structural blocker for Q1 work.

Examples: New Amsterdam Vodka 50ml, Buffalo Trace Bourbon 50ml, Bushmills Irish Whiskey 50ml, Larceny Kentucky Bourbon 50ml, Chopin Potato Vodka 50ml, Elijah Craig Small Batch Bourbon 50ml.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-28'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.451Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238974533658');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-22] Wind the advent campaign down after the shipping cutoff - PAUSE, do not delete', 'Pause rather than delete, so next September it comes back with its history, its negatives and its learnings intact.

Seasonality: whiskey advent calendar drops to 17,280 in December, 1,071 in January, 53 by March.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-20'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.398Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219239057192043');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-16] Rewrite 20 branded-bottle feed titles - bottle name first', 'The cheapest traffic in this category. spiritedgifts.com (DR 57, your #1 organic rival) ranks top-10 for branded bottle terms: blackened whiskey (2,500 vol, $0.41 CPC), dwayne johnson tequila (2,500, $1.79), the rock tequila (1,700, $1.13), the rocks tequila (1,400, $2.30), patron platinum (600, $0.90), clix vodka (600, $0.46), 1888 rum (500, $0.95).

Your own data already proves the model: oak and eden 246.19 ROAS, basil hayden 7.34, jameson black barrel 12.01, 20 year old whiskey 266.05, tito''s vodka gift set 92.93.

This is a feed-title and product-page job, not an SEO project. At $124 AOV it is the right play. Read 2026-11-17. Success: >=3 new converting branded terms.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-14'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.419Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238974524987');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-15] Fund the advent campaign through November - 20% steps weekly', 'If CPA holds under $80, raise in 20% steps weekly. November is the peak (53,779 searches vs 27,387 in October).

This is the exception to normal scaling discipline - the window closes absolutely and the category is worth nothing by March. Do not under-fund it out of caution.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-21'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.415Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238974439935');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-19] Shopping tROAS 250% -> 220% (only if Last30 stays under 2.50 at flat spend)', 'Conditional. 12% cut, within the <=20% rule.

TRIGGER: only if shopping - catch-all is still under 2.50 ROAS next read with spend flat.

Do NOT run this in the same window as any feed-title change - one change per campaign per window or the read is worthless.

FIRST: Campaign_Settings shows BidStrategy = TARGET_ROAS but the tROAS column is BLANK while the campaign name says 250%. Confirm the actual target in the UI before touching it.

Read 2026-11-03. Success: ROAS >= 2.50.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-03'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.461Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238941548209');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-18] HOLD PMax budget at $120/day - do not scale it', 'September marginal ROAS 1.89 against a 1.80 break-even. ''That is the ceiling'' was the September read and it still is. CPC +54% ($0.37 -> $0.57) on 7% fewer clicks.

More budget here buys nothing. 90d ROAS is a healthy 3.50 and 59.96 conv/month makes it the ONLY PMax campaign across all three accounts clearing the 50/month the course requires - so keep it running, just don''t feed it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-14'::date, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.497Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238941512610');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-23] Check the BroBasket cross-account keyword/product overlap', 'Ahrefs lists thebrobasket.com as a Booze Finders organic competitor (DR 46, 4 common keywords). More concretely: 235 of 407 live Booze Finders products carry ''BroBasket'' as the vendor.

If both accounts bid the same spirits-gifting terms you are paying twice into the same auction and bidding against yourself. This matters more as both accounts add Q4 budget.

Do this before January planning.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-19'::date, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.377Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238941605748');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-17] Add PMax audience signals (customer list + site-visitor list)', 'pmax - feedonly runs a single ''All Products'' asset group with no audience signals. Signals don''t constrain PMax but they speed learning.

Also: Q_Audiences is EMPTY for all three accounts. Resolve whether that is ''nothing attached'' or a broken script query - check Audiences, keywords and content > Audiences on both campaigns, and Tools > Shared library > Audience manager for list sizes.

Remarketing list refresh is manual with no API and there is no record of one in the last three weekly/monthly docs - treat as overdue. Confirm Optimize Targeting is OFF on anything remarketing.

Read 2026-11-10. Success: conv +10% at ROAS >= 3.20.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-10'::date, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.456Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238974365514');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-21] FREEZE structural changes from Dec 1', 'Monitor and fund only. Anything not shipped by Nov 30 waits for January.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-01'::date, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.401Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219239057166503');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-14] Add "Holiday" / "Christmas Gift" to gift-set feed titles before Nov 1', '''christmas'' appears in 0 of 500 served feed-title rows. ''holiday'' 0. ''corporate'' 0.

christmas gift baskets: 4,103 Oct searches -> 16,311 Nov -> 55,220 Dec.
holiday gift baskets: 2,859 -> 9,616 -> 31,428.

Get these words into the gift-set titles before November. Note your titles are already the best of the three brands (category search term first) - this is adding a seasonal modifier, not restructuring.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.482Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219239057188318');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-24] JANUARY: restrict ad schedule to 06:00-22:00 PT', 'DEFERRED ON PURPOSE. 01:00-05:59 runs 1.58 ROAS against a 1.80 floor on 7.0% of spend ($788.48 over 90 days) - unprofitable but not catastrophic.

Do NOT do this during the advent peak if it costs impression share. The $790 is worth less than one November advent conversion.

Also worth noting for scaling: the 20:00-21:00 window runs 6.36 and 4.17 ROAS on only $543 of combined spend. Evening traffic converts exceptionally well here and gets a fraction of the budget midday gets.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-12'::date, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.367Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219239007541445');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-03] Build YE | S | US | Advent Calendar | Max Clicks', 'THE QUARTER. Blocked by [Q4-02] inventory check.

Full spec:
- $25/day
- Maximize Clicks with a $2.00 max CPC cap (bid gate: 0 conversions on day one means manual or Max Clicks, NOT tCPA/tROAS)
- Exact + phrase only. NO broad - broad needs the campaign optimised, on smart bidding and at goal.
- Search network ONLY. Display OFF. Search Partners OFF. Day one.
- US ''Presence'', NOT ''Presence or interest''
- LP = the whiskey/bourbon advent collection, NOT the homepage
- Day-one negatives attached
- Attach a site-visitor list as OBSERVATION (not targeting) so there is audience data next quarter

Seed with the 8 proven terms as exact + phrase:
whiskey advent calendar (6.37 ROAS, 11,330 impr) | whiskey advent calendar 2026 (5.06) | bourbon advent calendar (2.51) | bourbon advent calendar 2026 (3.07) | whisky advent calendar (16.45) | alcohol advent calendar (4.70) | scotch whiskey advent calendar (37.13) | advent calendar bourbon (64.75)

Asset spec: 15 headlines leading with the exact search term (Whiskey Advent Calendar / Bourbon Advent Calendar / 24 Days of Whiskey / Advent Calendar for Whiskey Lovers / Scotch Advent Calendar / Alcohol Advent Calendar 2026 / Ships Free Before Christmas / Premium 50ml Tasting Minis). 4 descriptions naming box contents + shipping deadline. 4 sitelinks WITH descriptions. Callouts. >=3 structured snippets. Image asset of the OPEN calendar. Promotion asset with the holiday cutoff date.

Read 2026-10-27. Success: >=8 conv, CPA <$80.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.495Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219239056751781');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-13] Read the advent campaign', 'Read window closes 2026-10-27. Success: >=8 conv, CPA <$80.

If CPA holds under $80, this is the ONE place in the portfolio where aggressive mid-quarter scaling is correct - raise the budget in 20% steps weekly through November. The window closes absolutely: whiskey advent calendar goes from 53,779 searches in November to 1,071 in January to 53 in March.

Log to the test tracker as: ''YE | S | US | Advent Calendar - New campaign launch, 10/10-10/27''.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-27'::date, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.458Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238704812994');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[Q4-12] Fix the catalog blockers: $0.00 product, 4 title typos, vendor split, 24 empty collections', '- 1 live product priced $0.00: ''The Piglets Whistlepig Straight Rye Whiskey Tasters - Set of Three Mini 50ml - 6-Pack'' - a real sellable product at $0.
- Title typos live on site: ''Knob Creak'' (Knob Creek), ''Seaglass Chardonay'', ''Teeling Tinity'' (Trinity), ''Fireball whiksey'', ''St Germain Elderflower Liqueur 40'' (truncated - 375ml?)
- Vendor field split: ''Booze Finders'' (23) vs ''BoozeFinders'' (11). Fix before using vendor as a feed dimension. ALSO: 79% of live products carry a vendor that is NOT this brand (BroBasket 235, Go-To Gifting 87). If the feed is sending ''BroBasket'' as the brand on Booze Finders products that is a real problem - check.
- 24 of 78 collections have ZERO live products: an entire wine-varietal taxonomy (/merlot, /malbec, /zinfandel, /syrah-shiraz, /tempranillo, /red-blends, /sangiovese, /fortified-wine, /dessert-wine, /rose, /porter, /dark-beer, /brandy, /digestifs, /wine-regions, /wine-formats, /red-wine-varietals, /white-wine-varietals, /sparkling-wine-styles, /red-wine, /non-alcoholic_beer, /new_western_-_contemporary_gin). Live, crawlable, empty pages. Unpublish or fill.
- Duplicate collections: /specialty-and-niche and /specialty-niche are the same 22 products; /samplers (27) and /samplers-and-tasting-boxes (31) overlap heavily.
- ''spirit'' (13, lowercase) duplicates Alcohol/Craft Spirits. 9 beer substyles used as product_type.
- 297 archived products (37% of admin catalog) - confirm none is still fed or linked.
- /rincon-brewery-beer: 9 live, 0 served. Local craft beer, likely unshippable - confirm and exclude from the feed.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-28'::date, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:26:17.440Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238941697028');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P3] Split the blended 2.60 ROAS target by margin tier - NEXT month', 'Account: Booze Finders. Structural change. Sequence AFTER the advent campaign has a 2-week read.

FROM: one campaign (YE | shopping - catch-all - tROAS 250%) and one Config TargetROAS of 2.60 across all tiers
TO: taster-set / gift-set / plain-bottle campaigns, each with its own target derived from its own margin

Why: the SOP records margin at 50-65% BY TIER - taster sets high, gift sets mid, plain beer/booze lower. A single blended target structurally under-bids the high-margin tier and over-bids the low-margin one.
Evidence in the product data: taster and sampler sets return 2.6-3.5 ROAS consistently (Mega Whiskey 3.40, Kentucky Bourbon 3.15, Scotch Tasting 3.55, Jameson Black Barrel 3.98) while low-price and single-bottle items cluster at 1.1-1.6 (Tequila Mega 1.14, 12-Bottle 1.62).
Also addresses the root cause of: 594 SKUs with spend and no conversions, 530 SKUs served and never clicked - the "blasting all SKUs" pattern of a single catch-all ad group over 1,223 SKUs.

TIMING: one change per campaign per window. Do not restructure the main revenue campaign in the middle of Q4. November at the earliest, and only once the advent campaign is stable.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-30'::date, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:10:28.267Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238843308882');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P1] CVR work on the product pages - highest dollar value on this list, and not an ads task', 'Account: Booze Finders. This is a website/offer task, not a Google Ads task.

The number: Booze Finders buys 12,557 clicks/month to produce 128.28 conversions - a 1.02% site conversion rate. Same vertical, same month: BroBasket 3.36%, Bounty Basket 4.51%. Booze Finders converts at roughly ONE THIRD of its sister brands, at a $124.83 AOV.

The ads account is doing its job: $0.47 CPC, 2.69 ROAS, CPA flat at $46.46 while spend nearly doubled. The leak is after the click.

Worst offenders from Landing_Pages (30d):
- 21st-birthday-sampler-mini-liquor-gift-set, Shopping: 1,107 clicks, $226.34, 0.25% CVR, 1.43 ROAS
- 21st-birthday-sampler-mini-liquor-gift-set, PMax: 1,098 clicks, $169.57, 0.54% CVR, 4.14 ROAS
- tequila-sampler-mega, Shopping: 283 clicks, $99.13, 0.35% CVR, 1.32 ROAS
- reposado-tequila-sampler, Shopping: 254 clicks, $67.42, 0.39% CVR, 1.59 ROAS
- craft-beer-sampler-24, PMax: 58 clicks, $56.76, 0.00% CVR, ZERO conversions
Four pages, ~1,900 clicks, under 15 conversions.

The arithmetic: moving account CVR from 1.02% to 1.50% - still under half of Bounty''s - is worth roughly +$7,500/month in revenue at the same spend. Every bidding change on this month''s list combined is worth a fraction of that.

What to look at: does the price and what-you-get land above the fold on the mini/sampler pages; does shipping cost appear late in checkout; is the 21st Birthday page being found by people who wanted one cheap bottle rather than a 22-bottle set.
Rule: the offer / website / funnel matter more than tactics. When the problem is the page, say so - this one is the page.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:10:28.348Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238675528696');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[GAds P1] DO NOT negative the advent calendar terms - seasonality hold until 15 Nov', 'Account: Booze Finders. ACTION: deliberately do nothing until 2026-11-15, then re-read.

Negative_Candidates flags these as wasted spend. LEAVE THEM ALL:
- tequila advent calendar       5,530 impr | 58 clicks | $23.84 | 0 conv
- liquor advent calendar 2026     855 impr | 39 clicks | $21.75 | 0 conv
- scotch advent calendar 2026     904 impr | 24 clicks | $17.45 | 0 conv
- liquor advent calendar        1,126 impr | 36 clicks | $15.95 | 0 conv
- alcohol advent calendar 2026  1,030 impr | 21 clicks | $14.51 | 0 conv
- scotch advent calendar        1,018 impr | 18 clicks | $11.06 | 0 conv
- wine advent calendar 2026       243 impr | 12 clicks |  $9.21 | 0 conv
- beer advent calendar 2026       284 impr | 20 clicks |  $9.07 | 0 conv
- beer advent calendar            355 impr | 16 clicks |  $8.86 | 0 conv
- whisky advent calendar 2026     278 impr |  9 clicks |  $8.63 | 0 conv
Total: $140.33 - which is 59% of the account''s entire $235.92 of flagged wasted spend.

Why hold: it is September. Advent calendar purchase intent converts in late October and November, not now. Several of these have four- and five-figure impression counts at single-digit spend - they are being shown and ignored because it is too early in the season.
Rule: before excluding a poor performer, check feed quality, price competitiveness, SEASONALITY, historical performance, sample size, and whether enough time has passed. This is the textbook seasonality exception.
Negativing them now would cut the account out of its own peak season.

ON 15 NOV: re-read these in Negative_Candidates. Any still at zero conversions after the November peak gets negatived then.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-15'::date, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:10:28.331Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219238749804294');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[P1] Build Search campaign: YE | S | US | Advent Calendars | Max Clicks', 'THE BIGGEST OPPORTUNITY ACROSS ALL THREE ACCOUNTS THIS QUARTER. Grow My Ads step 7, still untouched, four weeks before peak season.

THE GAP: 28 converting search terms over 30 days. ALL 28 are not yet keywords. The account has 18 keywords and ZERO of them served at all in 30 days. 100% of demand capture runs through Shopping and PMax.

NEW CAMPAIGN SETTINGS:
  Name: YE | S | US | Advent Calendars | Max Clicks
  Bid strategy: MAXIMIZE CLICKS with max CPC cap, or manual CPC — NOT tROAS
  Max CPC cap: $1.00 (account blended CPC is $0.48; these terms clear at $0.41–$0.70)
  Daily budget: $40.00 (funds ~57 clicks/day at ~$0.70 — well clear of the 10 clicks/day floor)
  Network: Search only. DISPLAY NETWORK OFF. Search Partners off to start.
  Location targeting: PRESENCE — not "Presence or interest"
  Auto-applied recommendations: OFF

WHY MAX CLICKS AND NOT tROAS: a brand-new campaign has zero conversion history, which puts it in the <15 conv/30d band — manual or Max Clicks only. Do NOT launch on tROAS however much volume the account as a whole has (137 conv/30d). The gate applies at campaign level.

AD GROUP 1 — Advent Calendars (EXACT + PHRASE), own collection page:
  whiskey advent calendar — 12,706 impr, 5.83 conv, $978.14, 5.98 ROAS
  bourbon advent calendar — 5,939 impr, 1.0 conv, $164.95, 2.11
  bourbon advent calendar 2026 — 4,434 impr, 2.0 conv, $329.90, 2.95
  whiskey advent calendar 2026 — 1,797 impr, 1.0 conv, $205.94, 4.18
  alcohol advent calendar — 2,235 impr, 1.0 conv, $170.94, 4.51
  whisky advent calendar — 863 impr, 1.0 conv, $170.94, 17.15
  tequila advent calendar 2026 — 7,506 impr, 1.0 conv, $130.94, 3.00
  scotch whiskey advent calendar — 216 impr, 1.0 conv, $67.95, 20.78

AD GROUP 2 — Tasting Sets & Kits (EXACT + PHRASE), own collection page:
  tequila tasting set ($106.90, 50.90 ROAS) | bourbon tasting kits ($81.94, 112.25) | scotch tasting box ($95.84, 104.17) | old fashioned kit ($95.94, 7.98) | bourbon tasting kit ($56.95, 3.07) | bourbon tasting set ($68.94, 5.18) | tito''s vodka gift set ($132.89, 92.93) | vodka gift set ($47.71, 9.12) | mini alcohol bottles ($113.89, 12.49)

AD GROUP 3 — Distillery Names (EXACT ONLY — no phrase), product pages:
  pappy van winkle ($164.95, 14.33) | jameson black barrel ($142.89, 11.51) | basil hayden ($85.95, 6.21) | oak and eden ($164.95, 246.19) | best irish whiskey ($172.89, 21.08) | 20 year old whiskey ($164.95, 266.05) | gifts for whiskey drinkers ($176.89, 86.71) | what is a good bourbon whiskey to give as a gift ($139.89, 179.35)

WHY EXACT ONLY ON TIER 3: the bare distillery name converts, the same name plus the spirit word does not. "basil hayden" earns $85.95; "basil hayden bourbon" spent $16.17 with zero conversions. Bare name = gift shopper. Qualified name = someone pricing a bottle. A phrase keyword pulls the bottle-shoppers straight back in.

NO BROAD MATCH — broad requires an optimized campaign, on smart bidding, at goal. This will be none of the three on day one.

NEXT WINDOW (2026-10-19): read over a full two weeks. At 15+ conversions it can move to Maximize Conversions; at 30+, to tROAS 250%. Do not skip steps.

Log to test tracker: YE | S | US | Advent Calendars | Max Clicks — New Search campaign launched, 24 harvested terms, $40/day, 10/5–10/19

Doc: https://docs.google.com/document/d/1SiakV-21ZOsOngBTg0aHKIs1QZZNCUbSoNCGIjVGxwQ/edit', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-05T14:53:46.792Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219173878494022');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), '[P2] Add 16 EXACT negatives to YE | shopping - catch-all - tROAS 250%', 'CHANGE: Campaign YE | shopping - catch-all - tROAS 250%, ad group "catch all" → add 16 EXACT-match negative keywords. Recovers $251.20/30d (3.8% of account spend).

*** EXACT MATCH ONLY. NEVER PHRASE. *** The converting and non-converting variants are ONE WORD APART in four separate cases. A phrase negative would destroy the account''s best season:
  "whisky advent calendar" earns $170.94 at 17.15 ROAS — a phrase neg on [whisky advent calendar 2026] kills it
  "alcohol advent calendar" earns $170.94 at 4.51 ROAS — a phrase neg on [alcohol advent calendar 2026] kills it
  "tequila advent calendar 2026" earns $130.94 at 3.00 ROAS — a phrase neg on [tequila advent calendar] kills it
  "scotch whiskey advent calendar" earns $67.95 at 20.78 ROAS — a phrase neg on [scotch advent calendar] kills it

THEME A — advent calendars for spirit types that do not convert ($172.93/30d, 304 clicks, zero conversions):
  [tequila advent calendar] 92 clicks $37.91
  [liquor advent calendar 2026] 46 clicks $26.49
  [liquor advent calendar] 46 clicks $23.32
  [alcohol advent calendar 2026] 30 clicks $22.87
  [scotch advent calendar 2026] 24 clicks $17.93
  [scotch advent calendar] 24 clicks $14.04
  [wine advent calendar 2026] 15 clicks $11.28
  [whisky advent calendar 2026] 14 clicks $10.67
  [vodka advent calendar 2026] 13 clicks $8.42
The pattern is a catalog fact, not a keyword problem: whiskey, bourbon and whisky advent calendars convert. Tequila, scotch, liquor, wine and vodka do not. Either those SKUs are not carried, not in stock, or not price-competitive — see the paired Merchant Center task. If they can be sourced, these nine negatives become nine keywords instead.

THEME B — bare bottle / distillery research ($35.09/30d):
  [basil hayden bourbon] 54 clicks $16.17 (while "basil hayden" converts, $85.95)
  [pappy van winkle bourbon] 41 clicks $10.27 (while "pappy van winkle" converts, $164.95)
  [buffalo trace whiskey] 19 clicks $8.65
These three drew 8,283 impressions for 114 clicks — cheap traffic that never buys.

THEME C — generic tasting kit / gift set head terms ($34.58/30d):
  [whiskey tasting kit] $13.57 (but "bourbon tasting kit" and "bourbon tasting kits" both convert)
  [whiskey gift set] $10.80 (but "tito''s vodka gift set" and "vodka gift set" both convert)
  [scotch sampler] $10.21

THEME D — minor ($8.60/30d):
  [bourbon gift sets] 14 clicks $8.60 (note "bourbon tasting set" converts — keep them distinct with exact match)

NOTE ON THE $80 THRESHOLD: no single term reaches 1x the $80 target CPA — the largest is $37.91 — so the rule is applied at theme level, where each theme clears it.

Doc: https://docs.google.com/document/d/1SiakV-21ZOsOngBTg0aHKIs1QZZNCUbSoNCGIjVGxwQ/edit', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-05T14:53:46.815Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219173610638918');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'BoozeFinders — BUILD THE SEARCH CAMPAIGN: harvest 16 converting terms (Q4 seasonal, urgent)', 'THE PRIORITY ITEM IN THE PORTFOLIO. Blueprint step 7, still open.

State: 18 converting search terms in 30d, ALL 18 with no keyword behind them. The 18 keywords that DO exist in the account served ZERO times in 30 days. There is no working Search campaign.

Why now: the advent-calendar cluster is 5,445 impressions of already-converting demand, in mid-September, in a category that peaks Oct–Nov. Every week uncaptured is seasonal revenue that does not come back.

=== CAMPAIGN SETUP ===
Name: YE | S | US | Advent | MaxClicks (per naming convention)
Bid strategy: MAXIMIZE CLICKS with max CPC cap $1.50
  — NOT tCPA/tROAS. New campaign = 0 conversion history = under the 15-conv gate.
  — Do not let Google talk you into smart bidding at launch.
Daily budget: $25/day
  — Shopping runs $0.45–$0.47 CPC; non-brand Search will run ~$1.00–$1.50.
  — At $25/day that is 16–25 clicks/day, clearing the ≥10 clicks/day floor.
Match types: EXACT + PHRASE on all 16. NO BROAD.

=== AD GROUP 1: Advent calendars (5,445 impr) ===
  whiskey advent calendar          2,220 impr, 1.00 conv, $164.95,   5.55 ROAS
  bourbon advent calendar 2026     1,076 impr, 1.00 conv, $164.95,   5.53 ROAS
  bourbon advent calendar          1,032 impr, 1.00 conv, $164.95,  14.61 ROAS
  whiskey advent calendar 2026       576 impr, 1.00 conv, $205.94,  18.49 ROAS
  alcohol advent calendar            473 impr, 1.00 conv, $170.94,  16.11 ROAS
  scotch whiskey advent calendar      68 impr, 1.00 conv,  $67.95, 138.67 ROAS

=== AD GROUP 2: Distillery / brewery names (3,886 impr) ===
  basil hayden          1,648 impr, 1.00 conv,  $85.95,  16.99 ROAS
  buffalo trace whiskey 1,506 impr, 1.00 conv, $140.89,  19.98 ROAS
  maui brewing company    515 impr, 1.00 conv,  $79.80,  24.11 ROAS
  ghostfish brewing       184 impr, 1.00 conv, $101.93,  38.76 ROAS
  berry monkey beer        33 impr, 1.00 conv,  $47.85, 125.92 ROAS

=== AD GROUP 3: Gift sets & tasting formats ===
  old fashioned kit     408 impr, 2.00 conv, $191.88, 14.73 ROAS
  jameson gift set      242 impr, 2.00 conv, $187.89, 50.51 ROAS
  scotch sampler        175 impr, 1.00 conv,  $55.94,  6.15 ROAS
  tequila gift basket    95 impr, 1.00 conv, $116.89, 13.30 ROAS
  bourbon flight         86 impr, 1.00 conv, $200.94, 35.88 ROAS

Held back (under the 1-conversion bar, revisit next week):
  bourbon tasting kit (331 impr, 0.50 conv) | nice whiskey to gift (41 impr, 0.50 conv)', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), '2026-09-16'::date, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:57.926Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1218462193322805');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'BoozeFinders — Add 1 negative: jameson black barrel', 'Campaign: YE | shopping - catch-all - tROAS 250%
Match type: EXACT, campaign-level

  jameson black barrel — 2,136 impr, 14 clicks, $9.03, ZERO conversions

Theme: bottle-seeking, not gift-seeking. Someone searching a specific bottle wants the bottle, not a gift set. Meanwhile "jameson gift set" converts at 50.51 ROAS — the gift intent is what pays.

=== EXPLICITLY DO NOT ADD (despite the script flagging them) ===
• scotch advent calendar 2026 ($8.28) — five other advent terms convert and the season is just starting. Negativising it would cut into the exact demand the new Search campaign is being built for.
• whiskey taster kit ($19.05), bourbon tasting gift ($12.78), bourbon tasting set ($12.39) — taster sets are the highest-margin tier, and "bourbon tasting kit" (10.96 ROAS) and "scotch sampler" (6.15 ROAS) both convert. Thin data on the best products. Monitor, do not cut.
• bourbon gifts ($13.96), whiskey gifts for men ($13.83), gin gift set ($8.52) — core category terms barely above the $8 floor. Give them 2 more weeks.

Total account waste is $97.84 = 2.1% of spend. Below the noise floor — do not churn this.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), '2026-09-17'::date, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:52:57.915Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1218462193713378');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'Build the Search campaign — 10 converting terms, none of them keywords', 'THE BIGGEST OPPORTUNITY ACROSS ALL THREE ACCOUNTS.

Booze Finders has 18 keywords and NOT ONE served an impression in 30 days. There is no functioning Search campaign. Meanwhile Shopping has been harvesting converting terms for months:

flavored whiskey — $2.57 → $211.89 (82.5x)
maui brewing company — $1.19 → $79.80 (67.1x)
jameson gift set — $2.46 → $152.89 (62.2x)
buffalo trace whiskey — $2.67 → $140.89 (52.8x)
ghostfish brewing — $2.22 → $101.93 (45.9x)
bourbon flight — $5.60 → $200.94 (35.9x)
tequila gift basket — $8.25 → $116.89 (14.2x)
bourbon tasting kit — $8.50 → $105.95 (12.5x)
buffalo trace gift set — $2.75 → $20.31 (7.4x)
bourbon gifts for men — $9.84 → $20.31 (2.1x)

This is step 7 of the ecommerce blueprint: Shopping first, then build Search from what Shopping harvests.

STRUCTURE — single-themed ad groups, exact + phrase only, one landing page each:
• Producer/brand terms — ghostfish brewing, maui brewing company, buffalo trace whiskey, jameson gift set, buffalo trace gift set. (These also say your feed titles should lead with producer names.)
• Sampler/flight — bourbon flight, bourbon tasting kit, whiskey taster kit. Note `whiskey taster kit` currently WASTES $19.05 in Shopping with no conversions — in a dedicated ad group pointed at the sampler collection it may well convert.
• Category gift — tequila gift basket, bourbon gifts for men, flavored whiskey

BUDGET: $15-20/day (≥10 clicks/day at the account''s $0.41 avg CPC).
BIDDING: Manual CPC or Maximize Clicks. No smart bidding — it will have zero conversion history.
SETTINGS: Display OFF. Location = Presence, not Presence or interest.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), '2026-09-09'::date, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.848Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1218118236508734');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'Add 5 negative keywords — $61.76 recoverable', 'Zero conversions at or above the spend floor, last 30 days:

whiskey taster kit — $19.05 (but see the Search campaign task first — this may convert in a dedicated ad group, so negative it at AD GROUP level in Shopping only, not campaign-wide)
whiskey gifts for men — $12.96
bourbon tasting gift — $11.30
bourbon gift box — $9.36
bourbon gifts — $9.09

The last four are broad category terms that Shopping is matching too loosely. Ad-group-level negatives in `catch all`.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), '2026-09-09'::date, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.825Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1218118248162915');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'Using Sunset Beer Drops for weekly content ', 'how can we use Sunset weekly new beer drops for marketing content and pushing more beer sales

    Make socail content around it
    build email list 
    push live to website / ads 
    have claude make all of the above


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-23T19:55:29.652Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1213778736283415');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'IDEA - weekly beer drop - emails/social posts when bret sends new beer emails ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-18T15:35:45.923Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1213702500422984');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'Walk trhough process to help people find booze', '    Q&A style to get them to what they need 
    could use AI tool
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-12T17:50:15.438Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1213247106672047');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'To Do' LIMIT 1), 'Launch Roadmap', 'https://docs.google.com/document/d/1lI_9Sk1p8Ll3pQxU5d-doZixDtRfSM2UadPZkvXc4F4/edit?usp=sharing', NULL, NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:42:05.448Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109903');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Strategy & Positioning' LIMIT 1), ' BoozeFinders – Quarterly OKRs', 'Secondary Objective:
Improve conversion clarity and trust signals.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-23'::date, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T21:37:29.239Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219595254116060');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Strategy & Positioning' LIMIT 1), 'The Bounty Basket – Quarterly OKRs', 'Secondary Objective:
Improve conversion clarity and trust signals.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-23'::date, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T21:39:02.265Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219595096383673');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Strategy & Positioning' LIMIT 1), '☐ Classify SKUs:', '', NULL, NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:34:36.408Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109755');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Strategy & Positioning' LIMIT 1), 'BoozeFinders – Q4 ''26 OKRs', 'Objective: Turn holiday liquor gifting demand into a profitable first Q4.
Q3 result: $45.3k rev (target was $8k/mo). Q4 target $110k.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-31'::date, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-09T22:41:32.805Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219370396029750');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Strategy & Positioning' LIMIT 1), 'The Bounty Basket – Q4 ''26 OKRs', 'Objective: Win the brand''s first holiday season and prove repeatable paid acquisition.
Q3 result: $7.8k rev (target was $6k/mo). Q4 target $30k.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-31'::date, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-09T22:41:32.830Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1219370303725204');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Website' LIMIT 1), 'Online Liquor Store - Website Build - Boozefinders.com', 'Hey https://app.asana.com/0/profile/1207773019007614 one of our goals is to launch a online liqour store to help us sell more volume to get better discounts. 
We are getting togehter catalogs of products to get data on that end, and I could have my data scraper just scrape a whole site if need be. 

But I like these sites as examples
https://missionliquor.com
https://kegnbottle.com

Or if its too costly, we could set up something super basic like this:
https://craftspiritshop.com/

Our goal is to get everything live and working just for SEO purposes and start pouring effort and time into this buisness unit in the new year. 

It would be substantially more SKUs, probably in the low 10''s of thousands, but we are builidng out the sheets for that.

Let me know your thoughts. ', NULL, NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-13T20:24:33.777Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1211046912264832');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Website' LIMIT 1), 'SEO', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-12T17:20:34.270Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1213245738120051');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Website' LIMIT 1), 'Checklist of Apps to setup ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 51, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-09T21:28:20.007Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212718361405839');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Website' LIMIT 1), 'Security & Trust', '', NULL, NULL, 52, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:39:51.201Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109887');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'Meta ads ideas ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 53, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-27T02:37:07.699Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1210054226074061');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'Google Ads - Booze Finders', 'Launch Roadmap
https://docs.google.com/document/d/1J63FC1LaBt85PcuTTyYJ8SRZrj0AnRPAzkZPfafY320/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 54, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:34:54.758Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109760');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'Bing / Microsoft Ads - BoozeFinders', '', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), '2026-04-01'::date, 55, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:36:06.230Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109784');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'AWIN Affiliates', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 56, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:37:13.691Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109817');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'Analytics & Tracking', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 57, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:39:28.111Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212765765109877');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212718361405821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212718361405821') AND name = 'Martketing' LIMIT 1), 'Setup Social Channels for BoozeFinders.com', 'Email to use: boozy@boozefinders.com

Start with Meta (Facebook + Instagram together) 
These two should always be created as a pair.
 Create: 
    Facebook Page
    Instagram Business Account
    Meta Business Manager
 
Fastest path
 
    Go to Facebook → Create Page (Brand / E-commerce)
    Name: BoozeFinders
    Claim Instagram inside Meta Business Manager (don’t create IG separately)
    Upload logo + add site URL
    Set category: Wine, Beer & Spirits or E-commerce
 
⏱️ ~15–20 minutes total
 
 3️⃣ TikTok Business Account 
Do this directly, not from your personal TikTok.
 
    Platform: TikTok
    Sign up with the same social@ email
    Switch to Business Account
    Category: Alcohol / Beverage (this matters for ads later)
 
⚠️ TikTok is strict with alcohol ads—having it correctly categorized now saves headaches later.
 
⏱️ ~5–10 minutes
 
 4️⃣ YouTube (via Google Brand Account) 
You want a Brand Channel, not tied to a person.
 
    Platform: YouTube
    Create a Google Brand Account
    Channel name: BoozeFinders
    Handle: @boozefinders (grab this ASAP)
 

🍻 Exact Bios (SEO + Platform-Native)

📘 Facebook Page Bio

Name: BoozeFinders
Username: @BoozeFinders
About (Short)

> Discover hard-to-find beer, wine & spirits. Compare bottles, explore brands, and find your next favorite pour.

About (Long / Details section)

> BoozeFinders helps you discover, compare, and buy beer, wine, and spirits online. From everyday favorites to rare and allocated bottles, we make it easy to find what you’re looking for — and uncover something new along the way.

Category
    Wine, Beer & Spirits
    E-commerce Website


📸 Instagram Bio

(Keep this tight — IG rewards clarity)

> 🔍 Find Better Booze
🍺 Beer | 🍷 Wine | 🥃 Spirits
🧭 Discover new bottles & brands
🛒 Shop online ↓

Link
    boozefinders.com
Why this works
    “Find” + “Discover” = algorithm friendly
    No gifting language
    Signals catalog depth, not curation kits


🎵 TikTok Bio

TikTok needs explicit intent.

> We help you find better booze 🍻
Beer • Wine • Spirits
New drops, hidden gems & bottle finds
⬇️ Explore

Category
    Alcohol / Beverage


▶️ YouTube Channel Description

YouTube = long-tail SEO goldmine.
Short Description

> BoozeFinders helps you discover beer, wine, and spirits worth drinking.

Full Description

> BoozeFinders is your go-to place to discover and explore beer, wine, and spirits online. We cover new releases, hard-to-find bottles, brand spotlights, comparisons, and buying tips — helping you find the right bottle for your taste, budget, and occasion.

Links
    Website
    Instagram
    TikTok
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 58, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-27T23:29:06.487Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212718361405821/task/1212963327565087');

-- The Bounty Basket co (50 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('The Bounty Basket co', 'blue', '1215506761250500');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215506761250500'), id FROM people WHERE email = 'drew@thebevconnect.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215506761250500'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215506761250500'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215506761250500'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), 'Untitled section', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), 'To Do', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), 'Marketing', 3);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P3] Bounty Basket — settle break-even ROAS discrepancy: SOP says 1.85, Config says 1.80', 'DECISION NEEDED — flagged 2026-10-06, still unresolved.

- `claude/Monthly_Check_SOP.md` table: Bounty Basket break-even ROAS = 1.85
- Google Sheet `Config` tab: BreakEvenROAS = 1.80

Config is what actually drives the verdicts, because Claude reads it every run. So every report currently measures this account against 1.80.

It did not matter this week — Last30 ROAS 2.12 clears both comfortably — but it will matter on a close call.

ACTION: pick one figure and update the other so they match.
Sheet: docs.google.com/spreadsheets/d/1dBOxjwFQKrwi1QAUDNMTz2qWo3iapSJkWb_L8prd6Fo

Context from the SOP: Bounty subsidises shipping slightly to help early conversion, which is why its break-even sits above the other two accounts. If that subsidy is still in place, 1.85 is probably the more honest number.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:51.099Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219651780056566');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P3] Bounty Basket — confirm pmax - feedonly and shopping - catch-all tROAS 100% stay PAUSED', 'VERIFY ONLY — no change expected. Both campaigns show PAUSED in this run''s export; confirm in the UI that neither has been restarted.

1. `YE | pmax - feedonly - tROAS 250%` — MUST STAY PAUSED
   - Last30 (pre-pause): $682.31 → $564.86, ROAS 0.83
   - LastMonth: $900.79 → $1,043.03, ROAS 1.16
   Both below the 1.80 break-even. It also never cleared the PMax operating minimums: $22.74/day against the $50/day minimum, 5.96 conversions against the 50/month minimum.
   There is no version of this campaign at this account''s spend level that works. Do not restart it. If PMax is wanted here later it needs the whole account''s budget behind it, not a slice.

2. `YE | shopping - catch-all - tROAS 100%` — MUST STAY PAUSED
   0.93 ROAS. This is the September fix that took the account from 1.37 back above break-even. Pausing it also explains the account''s apparent CPC jump ($0.93 → $1.60): it was supplying 1,078 very cheap, non-converting clicks. Removing them raised the average mechanically. Revenue went up while clicks fell 30% — the fix working, not a cost problem.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:51.091Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219651348456905');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P3] Bounty Basket — check Merchant Center diagnostics (95 of 164 SKUs spend, no conv)', 'Merchant Center diagnostics are not in the script export and there is no API path in this pipeline — this is manual.

CHECK: Merchant Center → Products → Diagnostics for the Bounty Basket feed.

CONTEXT from the 90-day Shopping data:
- 164 SKUs seen
- 42 converting
- 95 with spend and no conversions
- 27 served but never clicked
- $5,251.94 Shopping spend (90d)

The 95-of-164 figure is the one to look at. With a single catch-all Shopping campaign carrying the entire account, FEED QUALITY IS THE TARGETING — there is no campaign structure doing that work. Disapprovals or weak titles on the converting 42 would hit immediately and visibly.

Paste anything MC flags into the next Claude run and it will be triaged against Products_90d spend data.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:51.094Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219651904098368');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P3] Bounty Basket — correct Config MonthlyBudget: $1,700 → ~$2,100', 'CHANGE: Google Sheet `GoogleAds_Check_Data (Script Output)` → tab `Config` → row `The Bounty Basket Co` → MonthlyBudget: 1700 → 2100

WHY: Config carries $1,700 against $2,002.02 of actual Last30 spend. Stale since at least 2026-10-06. Claude reads Config every run — pacing calls against this figure are guesswork until it is corrected.

Sheet: docs.google.com/spreadsheets/d/1dBOxjwFQKrwi1QAUDNMTz2qWo3iapSJkWb_L8prd6Fo

NOTE: the tROAS 250% → 215% change will raise spend. Re-check this figure at the monthly run on 2026-11-02.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-26'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-19T14:47:51.111Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219651780201573');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P0] Bounty — shopping - catch-all (v2): raise budget $40 → $48/day', 'BIWEEKLY TEST REVIEW 2026-10-15 — highest-value action in the portfolio, and the second window running that it has gone unapplied.

EXACT CHANGE: YE | shopping - catch-all (v2) - tROAS 250% → daily budget $40 → $48 (+20%). Do NOT touch the tROAS target in the same window.

WHY:
- 3.66 ROAS vs 1.80 break-even and 2.20 target (166% of target)
- CPA $23.73 vs ~$69 break-even CPA
- 90.01% of impression share lost to BUDGET, only ~8.6% to rank. It is winning on merit and running out of money.
- This was 87.78% on 2026-10-12 when $40 → $48 was first recommended. The starvation got worse.
- Already funded: YE | pmax - feedonly stays paused, freeing ~$29/day.

+20% is the maximum single step the course allows. Path if each week holds: $48 (now) → $58 (10/22) → $69 (10/29). Hold one week between steps.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-16'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:26:38.930Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219549603579693');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P1] Bounty — log 2 WON tests to the Testing Sheet', 'Completed Before/After/% change rows are in section 1b of the biweekly doc, ready to paste.

TEST ②: "YE | shopping - catch-all (v2) - tROAS 250% — Rebuild from catch-all tROAS 100%, 9/15–10/14" → WON
  Before: Cost $109.73 | Rev $558.68 | ROAS 5.09 | CPA $12.19 | CPC $1.96 | Conv 9.00 | Clicks 56 | AOV $62.08
  After:  Cost $1,192.19 | Rev $4,367.06 | ROAS 3.66 | CPA $23.73 | CPC $1.55 | Conv 50.25 | Clicks 770 | AOV $86.91
  Change: +986.48% | +681.67% | -28.05% | +94.59% | -20.98% | +458.33% | +1,275.00% | +40.00%

TEST ③: "Bounty account — Paused shopping catch-all tROAS 100% (0.77) + pmax feedonly (0.97), 9/15–10/14" → WON
  Before: Cost $1,669.94 | Rev $2,460.39 | ROAS 1.47 | CPA $57.58 | CPC $0.80 | Conv 29.00 | Clicks 2,076 | AOV $84.84
  After:  Cost $2,058.49 | Rev $5,177.69 | ROAS 2.52 | CPA $34.77 | CPC $1.58 | Conv 59.21 | Clicks 1,305 | AOV $87.45
  Change: +23.27% | +110.44% | +70.72% | -39.63% | +96.09% | +104.17% | -37.14% | +3.07%

Account moved from BELOW BREAK-EVEN (1.47) to 2.52. Contribution went −$132 → +$1,178.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, '2026-10-17'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:26:38.632Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219549601259977');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P2] Bounty — brand ad group: 14 headlines → 8 (no ad test possible)', 'AD TEST REVIEW: this ad group cannot be tested. 61 impressions over 30 days at 68.09% top IS = ~42 top-position impressions, against the course threshold of ~2,000. That is 3 impressions per headline per month. All 19 account assets are ungraded (NOT_APPLICABLE).

HYGIENE ONLY — drop the 6 headlines that have essentially never served:
- Celebrate Any Occasion (1 impr)
- Nationwide Gift Delivery (2 impr)
- Add Engraving & Card (2 impr)
- Gifts They''ll Remember (3 impr)
- Beautifully Gift Wrapped (5 impr)
- Alcoholic & Non-alcoholic Gift (6 impr)

Do NOT run an ad variation or experiment here. There is no volume to read.

SEPARATE AND MORE IMPORTANT: 17 clicks on brand queries produced ZERO conversions over 30 days. People searching the brand by name and not buying is a site problem, not an ads problem. The landing-page check was raised 2026-10-12 and is still open.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:26:38.657Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219549493220324');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[GAds P2] Bounty — fix Config: BreakEvenROAS 1.80 → 1.85', 'Standing discrepancy, open since Q3 and flagged again 2026-10-06 and 2026-10-12.

The SOP table says Bounty Basket''s break-even ROAS is 1.85. The Sheet''s Config tab says 1.80. Config is what actually drives the break-even verdicts in the Summary tab every run, so the verdicts are currently slightly too generous.

Either set Config BreakEvenROAS to 1.85, or amend the SOP to 1.80 — but pick one. This run''s verdict (2.52) clears both, so nothing changes today. It will matter on a marginal week.

Doc: https://docs.google.com/document/d/1lCZmxSYZccgNSXjhFyQbWylKE2ZIMLSu65YKAGPUSdM/edit', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T15:26:38.649Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219549329782536');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-05] No negatives this week — re-read the cocktail/martini theme Oct 19', 'Account: The Bounty Basket Co (974-955-1349)
Action: ADD NO NEGATIVES this week.

WHY: Rule is spend >= 1x target CPA ($69 break-even CPA) with zero conversions over 30d. The largest of 7 script candidates is $16.39 — under a quarter of the floor. Total flagged ''wasted spend'' is $78.68 across the whole account, 1-6 clicks per term. The script''s SpendFloor is set to $8, far too loose here.

This account''s problem is starvation, not waste.

RE-READ 2026-10-19 — the cocktail/martini/prosecco theme:
  1,144 impr / 33 clicks / $55.34 / 1.17 conv / 1.25 ROAS (below 1.85 break-even)
  $53.08 of it earning nothing. $14 short of the $69 floor.
If still below break-even next week, add as phrase negatives on YE | shopping - catch-all (v2):
  - dirty martini gift basket
  - martini gift basket
  - espresso martini gift set
  - cocktail gift sets
  - prosecco gift basket

DO NOT NEGATIVE: wine (6.11 ROAS), female-recipient terms (4.46 ROAS), or own brand.', NULL, '2026-10-19'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.020Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413897045295');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-03] Do NOT change tROAS on shopping-catch-all (v2) — hold at 2.50', 'Account: The Bounty Basket Co (974-955-1349)
Campaign: YE | shopping - catch-all (v2) - tROAS 250%
Setting: Target ROAS
STAYS: 2.50 (250%) — no change this window

WHY NOT, even though it is over-delivering:
The campaign is delivering 4.08 against a 2.50 target. Normally that argues for lowering the target to buy volume. But the campaign is 87.78% BUDGET-constrained — lowering the ROAS target while budget is the binding constraint changes nothing except making next week''s read unreadable.

Fix the budget first (W1012-01), then revisit the target once the campaign can actually spend.

Gate check: 58.25 conv/30d clears the 30+ threshold for tROAS comfortably. The strategy itself is correct.

REVISIT: 2026-10-26, after the budget path is done.', NULL, '2026-10-26'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.408Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219414056907967');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-10] Export Auction Insights for Bounty Basket (none exists)', 'Account: The Bounty Basket Co (974-955-1349)

No Auction Insights export exists for this account — flagged in the Q3 review (2026-10-06) and still missing. BroBasket''s exports live in Drive folder 1--o6VfqKNJ9zwqaDDZN1458OK-1oiXd_ but there is nothing for Bounty Basket or Booze Finders.

WHY: there is no API for Auction Insights, so this is the only way to see WHO is in these auctions. YE | search - brand loses 28.89% of impression share to rank; the Shopping campaign holds 9.99% SearchIS. The data can tell us it is lost, but not to whom.

HOW: Google Ads -> Insights and Reports -> Auction Insights. Segment by campaign. Export CSV to the Marketing folder in Drive (My Drive -> BroBasket 2024 and Beyond -> Marketing) and I will analyse it on the next run.

NOTE: Ahrefs'' paid index does not reliably see Shopping, PMax or low-volume keywords — it reported $0.00 of paid activity for this domain. Absence of Ahrefs paid data is never evidence a competitor is not bidding. Auction Insights is the authoritative source.', NULL, '2026-10-23'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.020Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413805417564');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-07] Fix Config: Bounty Basket BreakEvenROAS 1.80 → 1.85', 'Sheet: GoogleAds_Check_Data (Script Output), tab ''Config''
Row: The Bounty Basket Co (974-955-1349)
Column: BreakEvenROAS
FROM: 1.80
TO:   1.85

WHY: The SOP (claude/Monthly_Check_SOP.md) specifies 1.85 for Bounty Basket — it subsidises shipping slightly to help early conversion, hence the higher break-even than the other two brands. Config has read 1.80 since at least the Q3 review (2026-10-06) and was flagged then.

IMPACT: it makes every verdict in the Summary tab slightly too generous. This week it changes no conclusion (2.73 ROAS clears both 1.80 and 1.85), but on a marginal week it will produce a wrong ''above break-even'' verdict.

ALSO: if the W1012-01 budget path runs to $69/day, raise MonthlyBudget from $1,700 to ~$2,100.', NULL, '2026-10-14'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.024Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219414056913390');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-01] Raise shopping-catch-all (v2) budget $40 → $48/day', 'HIGHEST-PRIORITY ACTION ACROSS ALL THREE ACCOUNTS.

Account: The Bounty Basket Co (974-955-1349)
Campaign: YE | shopping - catch-all (v2) - tROAS 250%
Setting: Daily budget
FROM: $40.00/day
TO:   $48.00/day  (+20%, the max single step the course allows)

WHY:
- ROAS 4.08 vs 2.20 target and 1.85 break-even = 185% of target
- 87.78% of impression share lost to BUDGET, only 8.59% to rank -> this is a money problem, not a bid/quality problem
- Spending its full cap: $39.16/day of $40/day
- SearchIS only 9.99% — nine-tenths of a 4.08-ROAS auction is unbought
- CPA $20.17 vs ~$69 break-even CPA
- 25.4 clicks/day, well clear of the 10 clicks/day floor

WHERE THE MONEY COMES FROM:
YE | pmax - feedonly - tROAS, already PAUSED, was running 0.92 ROAS (below the 1.85 break-even) and consuming $880.88 inside Last30 = $29.36/day now freed. Net account spend still FALLS from ~$79/day effective to $58/day.

HOLD 1 WEEK. One change per campaign per window.

CAUTION: Oct 5-11 read $410.55 / 5.00 conv / 1.05 ROAS, down from 14.09 conv / 3.13 the week before. Almost certainly conversion lag (window closed 2026-10-11, export ran 2026-10-12 06:58), but confirm it recovers at the daily check before the next step.

PATH IF EACH WEEK HOLDS: $48 (Oct 12) -> $58 (Oct 19) -> $69 (Oct 26). At $69/day Config must rise from $1,700 to ~$2,100/month.', NULL, '2026-10-13'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.120Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219414056857921');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-06] Investigate why brand-name clicks convert at zero', 'Account: The Bounty Basket Co (974-955-1349)
This is a LANDING-PAGE / OFFER check, not an ads change.

THE DATA:
  ''the bounty basket''  — 10 impr, 6 clicks, $13.15, 0.00 conv
  ''bounty basket''      — 19 impr, 3 clicks, $5.20,  0.00 conv
  Combined: 29 impr, 9 clicks, $18.35, ZERO conversions over 30 days

WHY IT MATTERS: people searching your brand by name are the highest-intent traffic you will ever get. It is the one query type that should always convert. When it does not, the cause is on the site, not in the account — Austin''s diagnosis order puts offer/landing-page ahead of keywords and bidding.

Caveat: volume is tiny (29 impressions), so this may be nothing.

WHAT TO CHECK:
1. Where do those clicks land? Is the brand ad''s final URL the homepage or something stale/404?
2. Does the landing page show in-stock product with a clear price?
3. Mobile render?

DO NOT add a negative for your own brand name.', NULL, '2026-10-16'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.017Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413758352805');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-09] Confirm Oct 5–11 week recovers before the second budget step', 'Account: The Bounty Basket Co (974-955-1349)
Verification task — gates the next budget increase.

WHAT HAPPENED: Oct 5-11 read $410.55 / 5.00 conv / 1.05 ROAS — BELOW the 1.85 break-even.

THE FOUR-WEEK SEQUENCE:
  Sep 14-20: 23.00 conv, 3.74 ROAS
  Sep 21-27: 17.11 conv, 2.35 ROAS
  Sep 28-Oct 4: 14.09 conv, 3.13 ROAS
  Oct 5-11: 5.00 conv, 1.05 ROAS   <-- this one

MOST LIKELY EXPLANATION: conversion lag. The Last30 window closes 2026-10-11 and the export ran 2026-10-12 06:58, so the final week has had almost no lag allowance. BroBasket shows the same shape in its final week (2.08 vs 2.55). In an account this small, 5 conversions is not a sample.

WHAT TO DO: check the daily figures for Oct 5-11 again once 3-5 days of lag have landed.
- RECOVERED to 2.5+ -> proceed to the second budget step ($48 -> $58) on Oct 19
- STILL near 1.05 -> HOLD at $48 and diagnose in Austin''s order: conversion tracking -> structure -> offer/landing page -> keywords/negatives -> ad copy -> bidding. Do NOT raise budget again.', NULL, '2026-10-19'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.000Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413974194206');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-02] Keep YE | pmax - feedonly PAUSED', 'Account: The Bounty Basket Co (974-955-1349)
Campaign: YE | pmax - feedonly - tROAS
Setting: Status
STAYS: PAUSED (no change — this is a verification task)

WHY:
- ROAS 0.92 in Last30 vs 1.85 break-even. Returning $0.92 per dollar.
- Declined from 1.74 (Prev30) to 0.92 (Last30)
- $880.88 of spend inside Last30 before the pause took effect — this is the reason account cost still rose 27% in a window where the good campaign was capped
- Never hit PMax''s 50 conv/month threshold

Its freed $29.36/day funds task W1012-01. Do not unpause.', NULL, '2026-10-13'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.133Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413974328659');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-04] Leave YE | search - brand at $10/day — do not chase the click floor', 'Account: The Bounty Basket Co (974-955-1349)
Campaign: YE | search - brand
Setting: Daily budget and bid strategy
STAYS: $10.00/day on TARGET_IMPRESSION_SHARE — no change

WHY (this is a deliberate exception to the budget floor):
- 0.5 clicks/day vs the 10 clicks/day floor. At $1.89 CPC the floor would cost $18.90/day.
- BUT the demand does not exist to buy: 51 impressions in 30 days. Raising the budget cannot manufacture brand searches.
- 66.67% SearchIS / 62.22% TopIS is adequate brand defence at this size
- Smart-bidding gate does NOT apply: Target Impression Share is not conversion-based, so the 15/30-conversion thresholds are irrelevant

Leave it as cheap insurance. Do not try to fix an unfixable number.', NULL, '2026-10-19'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.018Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219413974237857');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[W1012-08] Publish the 46 drafted products — AOV fell 18%', 'Account: The Bounty Basket Co / thebountybasket.co (Shopify: 7y0641-zz.myshopify.com)
This is a CATALOG action, not an ads change — and it is the highest-value non-account work for this brand.

THE DATA:
- Only 71 of 150 products are LIVE. 46 are drafts.
- The drafts include BOTH the advent calendars AND the entire premium price ladder.
- AOV fell 18% this window: $101.99 -> $83.47
- Catalog coverage 49% (35 of 71 live products served in 90 days)
- All 15 occasion collections contain the IDENTICAL 71 products, which blocks any occasion-based campaign structure

WHY NOW: if the budget path in W1012-01 runs to $69/day, the catalog becomes the binding constraint well before the budget does. A 4.08-ROAS Shopping campaign with 9.99% impression share and only 71 products to show is being limited on two fronts.

Priority order:
1. The premium price ladder (directly addresses the AOV decline)
2. Advent calendars (November peak — three weeks out)
3. De-duplicate the 15 occasion collections so occasion-based ad groups become possible', NULL, '2026-10-20'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-12T14:58:30.003Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219414056913326');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-13] Tag the 29 virtual product components and exclude them explicitly from the feed', '41% of live products (29 of 71) are TypeL1 ''virtual product'' - basket components: Oreos $1.95, M&Ms $4.95, Shipping Insurance $4.95, Ghirardelli squares, Marich almonds, bar spoons, Engraved Glass, body butter, face mask, Fever Tree mixers.

They are currently correctly unserved (0 of 29) - but they are LIVE and sit in all 15 occasion collections. If anything ever broadens the feed (a new PMax asset group, an ''all products'' product group, a Merchant Center re-fetch) you will pay for clicks on a $1.95 packet of Oreos.

Set a dedicated product_type or custom_label and exclude them EXPLICITLY rather than relying on the current setup holding.

Also: 1 live product at $0.00 (''Special Card''), 2 live products with blank product_type. Delete /asset-pack-95126224898-example-products (Shopify leftover, 0 products).', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.375Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238942180635');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-19] Fix the 3 conversions reporting under $20 - and note the good news', 'LOW PRIORITY, and this corrects the September weekly.

The Sept weekly flagged $6.99 conversion values as a possible systemic value-mapping artifact. Checked across the full 90 days: only 3 of 94.2 conversions (3%) report under $20 - one at $6.99 (Margarita Gift Set) and two at $0.00 (Ruffino Prosecco basket, Mimosa Brunch Kit). Median value per conversion is $96.61, mean $95.08, against a $78.99 Last30 AOV.

CONVERSION TRACKING IS WORKING. The ROAS figures in this account are trustworthy and every bidding decision in the Q4 plan rests on solid ground.

Still worth fixing the three outliers in Shopify/GA4, but it is not the systemic problem it was feared to be.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-14'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.237Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238975089235');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-17] Differentiate at least 3 occasion collections with genuinely different product sets', 'ALL 15 occasion collections contain the IDENTICAL 71 products: Birthday, Anniversary, Christmas, Sympathy, Thank You, Wedding, Mother''s Day, Valentine''s, Easter, Get Well, Housewarming, Retirement, Congratulations, Just Because, Shop All.

''Christmas Gift Baskets'' and ''Sympathy Gift Baskets'' are the same page. Consequences:
- You cannot build occasion-based ad groups or asset groups
- You have no distinct Christmas inventory three months before Christmas
- Any structure split by occasion bids on identical products against itself

Start with Christmas, Corporate and Birthday, drawn from the newly-published inventory. This is what unlocks occasion-based structure in Q1, and it is exactly what giftboxloveco.com is already doing at the same domain authority.

Also fix the duplicates: /gift-baskets-for-all-occasions and /gift-baskets-for-all-occasions-copy are the same 39 products; so are /gift-baskets-by-price and /gift-baskets-for-women.

And note /spa-self-care has ONE product - and that product is your best performer at 6.17 ROAS. A category with one SKU and proven demand. Fill it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-07'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.034Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239154689523');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-25] JANUARY: consider a Corporate Gifts Search campaign', '''corporate gift baskets'' = 1,500 vol, $3.00 CPC (highest in the dataset), KD 0. ''corporate gifts'' = 5,400 vol, $3.00 CPC. Volume barely dips seasonally - it does not expire Dec 25.

You have /corporate-gifts with 39 live products and a ''Corporate and Personal Gifting'' headline that has had 4 IMPRESSIONS in 90 days.

At a $79 AOV the maths is tighter than for BroBasket, but corporate orders are multi-unit.

ONLY once v2 is stable and the catalog is published. This account can support ~2 tests at a time, not more - 63 conversions a month across four campaigns is the constraint, and running more than two concurrent changes makes every read worthless. That is how it went below break-even in the first place.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-15'::date, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.122Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238941694602');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-20] Attach a site-visitor list as OBSERVATION on v2', 'Q_Audiences is EMPTY for all three accounts - resolve whether that is ''nothing attached'' or a broken script query. Check Audiences, keywords and content > Audiences, and Tools > Shared library > Audience manager for list sizes.

HONEST ASSESSMENT: this account probably should NOT be doing audience work yet. With 95 conversions in 90 days a remarketing list will not reach the 1,000-user threshold Search requires, and Customer Match needs >=1,000 matched. CHECK THE LIST SIZES - if they are under 1,000, remarketing is not available to you and that is a scale problem, not a configuration problem.

What still applies: attach a site-visitor list as OBSERVATION (not targeting) so the list builds and there is audience data to review next quarter instead of another empty tab. Observation costs nothing and changes no bidding.

And: Optimize Targeting must be OFF on any remarketing ad group that does exist.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-07'::date, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.001Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238942113025');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-16] Add Christmas/Holiday to gift-set feed titles AND vary the occasion tail', 'TWO parts.

1. ''christmas'' appears in 0 of 151 served feed-title rows, ''holiday'' 0, ''advent'' 0. christmas gift baskets: 16,311 Nov searches -> 55,220 Dec. holiday gift baskets: 9,616 -> 31,428. Add before Nov 1.

2. THE RISK IN YOUR TEMPLATE: your titles are the best-structured of the three brands (category keyword first, gender qualifier, benefit, occasion after a single pipe, 79-111 chars) - but the SAME tail repeats verbatim across 42 products. Every title ends in a permutation of ''Birthday & Thank You Gift'' or ''Birthday & Celebration Gift''. Combined with 15 identical occasion collections, that invites your own products into the same auctions against each other.

Vary the occasion tail by what each product is actually best for.

3. ALSO: the Merchant Center feed titles differ from the Shopify titles and are worse in places - ''Margarita Gift Set Gift Set | Tequila Gift Set with Margarita Mix...'' repeats ''Gift Set'' three times in six words. Audit the supplemental feed against the Shopify titles.

Read 2026-11-10. Success: impressions +25%, ROAS >= 3.50.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-31'::date, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.172Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238975089029');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-21] Add sitelinks, callouts and structured snippets to search - brand', 'The script does not export extensions (RSA_Assets is headlines/descriptions only), so this must be done by hand.

4 SITELINKS WITH DESCRIPTIONS: Shop All Gifts | Corporate Gifts | Gifts Under $100 | Build Your Own
CALLOUTS: Free Engraving Available | Nationwide Delivery | Handmade To Order | Gift Wrapped Free
>=3 STRUCTURED SNIPPETS: Types (Wine, Champagne, Tequila, Cocktail Kits, Spa) and Styles (Birthday, Anniversary, Corporate)
IMAGE ASSET + PROMOTION ASSET with the holiday shipping cutoff

ALSO cut 13 headlines to 5. Keep: The Bounty Basket Co (49 impr, 1 conv) | Gift Baskets for Her & Him (35, 1) | Personalized Gift Boxes (21, 1) | Custom Gift Baskets (27, 0) | Beautifully Gift Wrapped (2, 1). Fewer assets means each gets a readable share of 156 impressions a quarter.

BE HONEST ABOUT THE CEILING: 49 impressions on the top headline across 90 days. PerformanceLabel is NOT_APPLICABLE on all 17 assets and will stay that way. There is no ad test possible in this account and will not be for several quarters. Extensions are worth doing because they are free impression real estate that works at any volume - the headline work is housekeeping, not optimisation. Do not spend real time here.

Confirm account-level automated assets are mostly OFF - keep only SELLER RATINGS and LONGER AD HEADLINES. Ad Strength is not a performance metric. Ignore it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-07'::date, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.235Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239007977231');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-18] Isolate The Chocoholic Box in its own product group - check price vs market first', 'BIGGEST SINGLE PRODUCT WASTE IN THE ACCOUNT: 59,409 impressions across two feed rows, $201.36 spend, 1 conversion, 0.73 / 0.00 ROAS.

59k impressions and one sale means the listing attracts clicks it cannot convert. Per the course order, check in this sequence BEFORE bidding:
1. PRICE - compare against Ghirardelli/Ferrero assortments on Amazon and gourmetgiftbaskets. If it is above market, no feed edit saves it.
2. IMAGE - compare it side by side with the Spa Day Gift Basket (6.17 ROAS). Gift baskets need the assembled basket with contents visible, not a closed box. That is a ten-minute job with a real chance of explaining the gap.
3. LANDING PAGE.

Then isolate at a low bid. Read 2026-11-17. Success: ROAS > 1.85, or exclude.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-14'::date, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.044Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239057594079');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-22] Fund v2 through the peak - 20% steps if CPA holds under $69', 'If CPA holds under $69 and ROAS above 3.00, raise in 20% steps. December volume on ''gift baskets'' is 3.9x October''s.

One change per campaign per window. Never a budget change and a target change in the same week.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-28'::date, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.131Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239008049452');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-23] FREEZE structural changes from Dec 1', 'Monitor and fund only.

AND: do NOT reintroduce PMax in Q4. This account cannot feed a PMax campaign - it needs $50/day minimum and 50 conversions/month, and it has 63 across the WHOLE account. Revisit when the account clears 100 conversions/month.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-01'::date, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.101Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238942030578');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-12] PUBLISH the tequila, wine and champagne premium ladders', 'The $175-$816 inventory sitting in draft: the whole Casamigos/Patron tequila set ($175.95-$194.95), the Justin/Ojai/Seaglass wine ladder, the full champagne ladder up to Dom Perignon Brut 2015 ($767.37/$816.66), Moscow Mule Gift Set ($79.95), Classic Gin & Tonic Set ($69.95), Bloody Mary Gift Basket for Her ($99.95).

WHY IT MATTERS: AOV is $78.99 and fell 30.6% MoM - that is the account''s soft spot. This inventory lifts it.

Demand proof from sister accounts: ''moscow mule gift set'' converts at 79.86 ROAS on BroBasket, ''gin and tonic gift set'' at 25.34. ''tequila gift set'' = 1,000 vol, KD 0, $0.50 CPC. Your Champagne Campaign basket already runs 4.47 ROAS.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.036Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219238942179412');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-11] PUBLISH the 12 written baskets sitting in draft', 'Written, priced, and invisible to ads: Chocolate Lovers Gift Box, Candy Sampler, Coffee Lovers, Mimosa, Wine & Chocolate, Cheese & Charcuterie, Wine & Cheese, Meat & Cheese, Movie Night, Game Night, Date Night, Hot Chocolate.

''charcuterie gift basket'' = 1,600 vol, KD 0, $1.20 CPC - and you don''t rank or advertise.

Only 71 of 150 products are live. 46 are draft, 26 more are active-but-unpublished.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.054Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239008094780');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), '[Q4-24] JANUARY: re-read geo when there are 250+ conversions. Not before.', 'DELIBERATELY DEFERRED, and the reason matters.

50.7% of 90-day spend ($2,646) sits in regions below the 1.85 break-even - Florida 0.68, Texas 0.68, New Jersey 0.69, plus 7 regions at zero conversions (Maryland $159, Washington $110, Connecticut $91, Missouri $83, Wisconsin $63, Minnesota $52, Kansas $40).

That number looks alarming and it is the honest reason NOT to act. 95 conversions across 53 regions averages 1.8 conversions per region. Florida at 5 conversions on $478 is not statistically distinguishable from California at 17 on $376 - the difference is a handful of orders. Seven zeroes on $40-$159 each is one to two missed orders apiece at a ~$69 break-even CPA, i.e. exactly what chance produces at this volume.

I tested the ''non-shippable states'' theory across all three brands: only NORTH DAKOTA has zero conversions in all three accounts, on $75.73 combined. Maryland and Washington convert fine for BroBasket. It is not a shipping restriction.

Excluding half the country to chase a blended ROAS point would shrink an account that has only just become profitable. Under smart bidding location bid adjustments are ignored anyway, so exclusion is the only lever and it is not warranted.

ONE CHEAP CHECK NOW: confirm the Shopify shipping profile ships to MD, WA, CT, MN, MO, WI. If any is blocked those are landing-page dead ends and excluding them IS correct - a fulfilment fact, not an inference from zero conversions.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-12'::date, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T23:27:57.018Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1219239057562687');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Cut pmax - feedonly budget $30/day → $15/day', 'Campaign: YE | pmax - feedonly - tROAS 188%
Setting: Daily budget
Change: $30/day → $15/day

Why:
  ROAS 1.50 (Last30) and 1.10 (MTD) — BELOW the 1.80 break-even and falling
  Cost $803.59 = 48% of all account spend
  12 conv/30d — under the 15-conversion gate
  0.00% IS lost to budget — it is not constrained by money, so cutting it costs no impressions

It also fails BOTH PMax minimums from the course:
  $30/day against a $50/day floor
  12 conversions against the 50/month needed to run smoothly
Too small to work, and losing money while it tries. Consolidation remains the standing recommendation for this campaign.

PAIRED WITH: the $25 → $40 increase on shopping - catch-all (v2). Net account daily budget unchanged at $65/day.

No bid-target change this window — one change per campaign. Hold 2 weeks, re-read 28 Sept.', NULL, '2026-09-15'::date, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.245Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462194550707');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Decide on YE | search - brand: commit real budget or accept as token', 'Campaign: YE | search - brand
Current: $10/day budget, TARGET_IMPRESSION_SHARE bid strategy
30d: $17.74 cost, 9 clicks, 1 conv, $86.94 revenue, 4.90 ROAS

The problem: 0.3 clicks/day, against the course floor of ≥10 clicks/day. It cannot be optimised at this volume — every metric on it is noise, including the 11.11% IS lost to budget and the 4.90 ROAS.

Brand impression share is 48.89%. BroBasket runs 88.56% on brand by comparison, so roughly half of Bounty''s brand auctions are going to someone else.

Decision: either commit real budget to brand defence, or accept this as a token placeholder and stop reading its numbers. Both are defensible; leaving it ambiguous is not.

Low priority relative to the budget reallocation — handle once the PMax/v2 move has settled.', NULL, '2026-09-25'::date, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.494Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462271468394');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — DO NOT add "margarita gift basket" as a keyword (below break-even)', 'Decision record — no action needed, logged so it is not re-raised next week.

  margarita gift basket — 184 impr, 5 clicks, $6.36 cost, 1.00 conv, $6.99 revenue, 1.10 ROAS

It is the account''s ONLY keyword candidate and it clears the mechanical bar (≥30 impressions, ≥1 conversion). It still should not be added: the conversion was worth $6.99, a 1.10 ROAS, below the 1.80 break-even. Harvesting it means deliberately buying more of a losing order. The rule exists to find profitable demand, not to be applied blindly.

SEPARATE QUESTION WORTH ASKING: a $6.99 order against an $82.61 average basket is an outlier, and this account subsidises shipping. Was that order profitable at all? If $6.99 orders are getting through checkout, that is an offer or product-configuration problem, not an ads problem.', NULL, '2026-09-18'::date, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.311Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462349717056');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Reconcile break-even ROAS: Config says 1.80, SOP says 1.85', 'Housekeeping, but it affects every future verdict in this account.

  Config tab of GoogleAds_Check_Data: BreakEvenROAS = 1.80
  Monthly_Check_SOP.md table:         Break-even ROAS = 1.85

The SOP''s 1.85 reflects the shipping subsidy this account carries to help early conversion. The script reads Config, so 1.80 is what is actually driving the "BELOW BREAK-EVEN" verdicts in the Summary tab.

This week''s conclusions do not change either way (the account reads 1.34 on Last30 and 1.85 ex-paused-campaign — which lands exactly on the disputed line, so the reconciliation matters for next week''s read).

Pick the correct figure and make Config and the SOP agree.', NULL, '2026-09-18'::date, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.197Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462157934962');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Raise shopping - catch-all (v2) budget $25/day → $40/day', 'Campaign: YE | shopping - catch-all (v2) - tROAS 100%
Setting: Daily budget
Change: $25/day → $40/day
Funded by: the $15/day cut to YE | pmax - feedonly - tROAS 188%. Net account budget unchanged at $65/day.

Why — this is the textbook budget-move case, at or above target ROAS AND losing IS to budget:
  ROAS 4.68 — above the 2.20 target, more than double the 1.80 break-even
  46.03% of impression share LOST TO BUDGET (vs 44.23% to rank)
  Cost $77.66, 7 conv, $11.09 CPA against a ~$69 break-even CPA
  Only campaign across all three accounts where budget is the DOMINANT cause of lost IS

CAVEAT, stated plainly: ~11 days of data and 7 conversions. Small sample — 4.68 will regress. The reason to act anyway is that the IS signal is unambiguous and the funding source is genuinely unprofitable. You are moving money from a known loser to a probable winner.

Gate note: 7 conv/30d is under the 15-conv gate and this runs tROAS 100%. Technically a violation, but a 100% target is barely a constraint. Leave the strategy alone — the budget is this campaign''s one change for the window.

Hold 2 weeks. Re-read 28 Sept: does 4.68 survive 60% more spend, and does it land above 2.20?
Log to test tracker as: shopping - catch-all (v2) — Raised budget $25 → $40/day, 9/14–9/28', NULL, '2026-09-15'::date, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.308Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462270522922');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Add 1 negative: gift basket', 'Campaign: YE | shopping - catch-all (v2) - tROAS 100%
Match type: EXACT, campaign-level

  gift basket — 145 impr, 1 click, $10.94, ZERO conversions

Theme: generic head term. Maximum breadth, no product or occasion specificity.

HOLD — do not add yet:
• prosecco gift basket ($10.79, 67 impr, 2 clicks). Two clicks is not evidence. If the intent is genuinely off-category it will re-appear next week with more spend behind it. Cutting on two clicks is churn.

Total account waste is $21.73 = 1.3% of spend. This is noise and does not warrant a work session — the paused-campaign check is the real money.', NULL, '2026-09-18'::date, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.216Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462157915561');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Check Merchant Center Diagnostics for disapprovals', 'Not in the script export — no API exists. Manual check in Merchant Center → Diagnostics.

Catalogue is small: 166 SKUs seen in 90 days, 30 converted, 29 took zero clicks, 107 spent with no conversion.

With a catalogue this size, a handful of disapprovals is a meaningful share of everything you can actually show — worth a look even though the absolute numbers are small.

Paste the diagnostics output into the Google Ads project and Claude will triage it.', NULL, '2026-09-21'::date, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.131Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462180195995');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Confirm YE | shopping - catch-all - tROAS 100% is still paused', 'Campaign: YE | shopping - catch-all - tROAS 100% (the ORIGINAL, not v2)
Status should be: PAUSED

This single check is worth more than every negative keyword in the account.

It spent $762.70 at 0.75 ROAS inside the Last30 window before it was paused — 46% of all account spend, returning 75 cents on the dollar. It is the entire reason the account reads 1.34 ROAS.

Strip it out and the account ran at:
  $898.99 cost / $1,659.77 revenue = 1.85 ROAS — ABOVE the 1.80 break-even

Confirm it is paused and stays paused. Next week''s Last30 window will finally drop most of that $762.70, so headline ROAS should climb toward 1.85 on its own. If it does not, the problem is somewhere else and needs a fresh diagnosis.', NULL, '2026-09-15'::date, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T14:53:37.270Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218462348988155');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'BountyBasket — Add NO keywords and NO negatives this week', 'DECISION: add nothing. Close after confirming.

NEW KEYWORDS — NONE QUALIFY:
Zero converting search terms in the last 30 days, across all three campaigns. Nothing meets >=30 impressions AND >=1 conversion. 18 keywords in the account, 4 serving. There is no harvestable intent data at this spend level — which is itself the finding.

NEW NEGATIVES — NONE QUALIFY:
Target CPA = AOV $107.29 / target ROAS 2.20 = $48.77. Only 2 flagged terms, $21.14 total, neither close:
• prosecco gift basket — $11.23, 69 impr, 3 clicks. 23% of ONE target CPA. Far too little spend to judge.
• bounty basket — $9.91. *** THIS IS YOUR OWN BRAND TERM. NEVER NEGATIVE IT. *** Its zero conversions are the tracking flag, not a waste signal.

The loss in this account is not coming from search terms — it is coming from a bid strategy that targets below break-even (see the catch-all pause task). Negatives here would be treating a symptom that isn''t there.', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-08T18:58:07.346Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218287009878154');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'WEEK 3: Lower PMax tROAS 240% → 210%, budget $85 → $110/day', 'ONLY if PMax holds ≥1.85 ROAS at the higher spend after the two-week hold.

Why the target and not just budget: this campaign loses 0% impression share to budget and 83% to RANK. More budget does nothing — it needs to bid harder. A 12.5% target cut is inside the course''s 10-20% band.

If ROAS drops below 1.85, revert and hold. Do not cut more than 20% at once.', NULL, '2026-09-19'::date, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.792Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218118248110330');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'Exclude 3 money-pit SKUs from Bounty Basket PMax', '90-day, zero conversions:

1. Spa Day Gift Basket — $136.57 in PMax + $93.18 in Shopping = $230 across 37,909 impressions, 0 sales. Biggest single waste in the account, and the one product that doesn''t fit an alcohol-gifting proposition.
2. The Classic Martini Gift Basket — $96.35, 0 conv
3. The Reposado Tequila Sampler — $81.15, 0 conv on 27,187 impressions

Before excluding, the course order: check feed quality, price competitiveness, seasonality, sample size. All three have well past enough impressions for the sample to be real.', NULL, '2026-09-05'::date, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.782Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218118105763133');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'Audit landing pages behind the 0.12% CVR Shopping traffic', '2,245 clicks converting at 0.12% is either worthless traffic or a page problem. If it''s the pages, the same tax is quietly hitting PMax too — which would cap everything we do next.

Check the product pages those Shopping clicks landed on: load time, price vs. competitors, above-fold clarity, shipping cost visibility.

This is the offer/funnel check, not an ads check. If the pages are the bottleneck, no bid change fixes it.', NULL, '2026-09-12'::date, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.972Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218118342286699');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'PAUSE `YE | shopping - catch-all - CPC` — 0.34 ROAS, ~$470/mo loss', 'Last 30d: $716.91 spend → $244.00 revenue. 2,245 clicks, 2.64 conversions = 0.12% CVR. CPA $271.43 against a $110.83 AOV. Break-even ROAS is ~1.85 (60-65% margin, minus the shipping subsidy).

It is on Maximize Clicks, doing exactly what that tells it to: buying the cheapest clicks ($0.32) in volume with no regard for conversion.

Move the $25/day to `YE | pmax - feedonly - tROAS 200%`, which runs 2.34 ROAS — above its target.

EFFECT: account goes from $1,512 spend / $2,066 revenue (1.37 ROAS, LOSS) to $795 / $1,822 (2.29 ROAS, PROFIT). Same money, account flips profitable before a dollar of new budget goes in.

2,245 clicks at 0.12% is a decisive sample — this is not a patience problem.', NULL, '2026-09-05'::date, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.776Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218118105953962');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'Raise PMax budget $60 → $85/day (absorb the paused Shopping budget)', '`YE | pmax - feedonly - tROAS 200%`. Currently spending $25.9/day of a $60/day budget, so this is a ceiling raise not a spend raise — it gives room once Shopping''s traffic redistributes.

Do NOT change the tROAS target in the same week. At 16 conversions/month this campaign is thin (course says 15-29 = Maximize Conversions only, no ROAS target) and two simultaneous changes make the read impossible.

Hold two weeks before the next move.', NULL, '2026-09-05'::date, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T22:32:57.859Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1218118105955019');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Untitled section' LIMIT 1), 'Setup of New products - TBBC', 'https://docs.google.com/spreadsheets/d/1b79CHHVLZgKdp5PW8ZtZLRaMH4uo5Tz-MJ6R0_uvxG0/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1qvr8OocIQGvKx7apg-bovw51JYrqmJlM7Te5y2Da_LQ/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1G3VhcBVn3rfAgVXg_Y_KpLtMtMgQB5Oy0-LySUNQiPQ/edit?usp=sharing

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-08T23:16:26.255Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1215506761250508');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'To Do' LIMIT 1), 'Collections / Produts Optimization', 'https://docs.google.com/spreadsheets/d/1gqFBVkmzsLVkloSMB0_8GqmvLyKYnztw3KvC-0trV60/edit?usp=sharing', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T19:35:41.614Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1216832340951107');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'To Do' LIMIT 1), 'Product + Collection Builds SEO', 'https://docs.google.com/spreadsheets/d/1NVTOs9ccaCKQo_bJuyrOXo223M3TMbCl6T9I0DkMp9Y/edit?usp=sharing

https://docs.google.com/document/d/1UHHWs41qq-gfDR6k1ljWfhTz9CJpgBSuHppdxodByAE/edit?usp=sharing

https://docs.google.com/document/d/1cGZSfH2UULEHlCjmb8kpsEY0RpBT4GEGmTMoZ5l0oZM/edit?usp=sharing', NULL, NULL, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-15T19:36:28.869Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1215731058961787');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'To Do' LIMIT 1), 'Run Matrixify import sequence + create option_set_v2 metafield', 'If not already done, run imports in order:
    Create metafield def custom.option_set_v2 (Single line text) in Settings > Custom data > Products
    bounty_matrixify_import.csv (14 products)
    bounty_spirit_tags_update.csv — BEFORE collections (Tags Command = MERGE)
    bounty_collections_import.csv
    bounty_addon_products_import.csv — BEFORE triggers
    bounty_option_set_triggers.xlsx (import as Products entity)
Out-of-order = empty collections / broken add-ons.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-08T23:31:32.130Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1215521073856949');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215506761250500'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215506761250500') AND name = 'Marketing' LIMIT 1), 'Google Ads - Bounty Basket Co', 'https://app.asana.com/1/1200828512126939/profile/1211431490462349 I got you access to GMC and Google Ads 
Target is to get ads live by Monday next week 

Let me know your thoughts
Thanks ', NULL, NULL, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T22:39:44.951Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215506761250500/task/1216170704344668');

-- The Bev Connect (21 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('The Bev Connect', 'magenta', '1212077752730534');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1212077752730534'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), 'INFO', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), 'To Do', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), 'Doing', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), 'Complete', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), 'Marketing', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Send email to will', 'https://claude.ai/chat/2cde2b21-07f8-442f-a581-0a72db9d86fa', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-16T20:01:51.220Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1218562542145148');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Research - Magento sales tax + integrating strip checkout/payments / paypal', 'To act as the Merchant of Record (MoR) for your client on Adobe Commerce (Magento), your agency must step in as the legal seller of the products. You assume full liability for payment processing, chargebacks, and global sales tax compliance, while Stripe and PayPal serve strictly as your underlying Payment Service Providers (PSPs).
Here is the architectural and operational blueprint to deploy this model.

1. Legal & Financial Foundation

Because you are the MoR, the transaction occurs between the end-customer and your agency.
    Account Ownership: You must provision the Stripe and PayPal business accounts under your agency’s legal entity and Employer Identification Number (EIN).
    Customer Facing: The customer''s bank statements must reflect your agency''s name (e.g., AGENCY* CLIENT-STORE).
    Terms & Invoicing: The Magento checkout, order confirmation emails, and site terms must explicitly state that your agency is the seller of record. The generated tax invoices must feature your agency''s business details.

2. Magento Payment Gateway Integration

To route checkout funds directly to your agency, integrate the payment gateways on the client’s Magento instance using your credentials.
    Stripe Integration: Install the official Stripe Payments Magento 2 extension. Input your agency’s Publishable and Secret API keys in Stores > Settings > Configuration > Sales > Payment Methods.
    PayPal Integration: Connect PayPal Express Checkout using your agency’s PayPal Business API credentials.
    Capture Settings: Configure both gateways to "Authorize and Capture" so funds route immediately to your MoR accounts upon order placement.

3. Sales Tax Strategy (The Liability Layer)

As the MoR, your agency’s tax nexus, not the client''s, dictates where sales tax must be collected and remitted.
    Dynamic Tax Engine: Do not rely on Magento’s native static tax tables. Install a dynamic compliance tool like Stripe Tax, TaxCloud, or Avalara.
    Stripe Tax Setup: If you use Stripe Tax, install stripe/tax via Composer. In Magento, set your API keys and map your product catalog to Stripe Tax Classes (e.g., standard physical goods vs. digital services). Stripe will automatically calculate the exact local tax rate at checkout based on the buyer''s location.
    Filing & Remittance: While Stripe Tax calculates the tax at checkout, your agency remains legally responsible for filing the returns and remitting those funds to state or regional tax authorities.

4. Payouts and Risk Mitigation

Since 100% of the gross revenue lands in your accounts, you must handle the backend reconciliation.
    Client Payouts: You will need a B2B flow to remit net earnings to your client after deducting sales tax, Stripe/PayPal processing fees, and your MoR margin. You can handle this manually via wire transfer, or programmatically using Stripe Connect (routing the client''s cut to a Connected Account).
    Chargeback Risk: If a customer issues a chargeback, Stripe or PayPal pulls the funds directly from your account. Enable Stripe Radar and PayPal Seller Protection, and establish a strict Service Level Agreement (SLA) with your client dictating how you claw
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T19:55:16.358Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1218116649876173');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Packing materials', 'Cold Packs 
https://www.amazon.com/dp/B01MY3CYQK?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1

Insulated Shippers
https://www.amazon.com/dp/B0CMJGG1W1?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-27T15:54:37.667Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1217884891701052');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Websites, Packers, Tech Providers, Fulfillment, and more ', 'Great example website 
https://drinkloverboy.com/

Co-packer / packagin / wholesale distro hub 
https://premierpackaging.com/

Liquor Fufillment Tech Providers 
https://business.liquorstorefront.com/pricing

https://liquidrails.ai/

Online Liquor Store who also do fufillment 
https://www.bevmax.com/
https://liquorbarn.com/

Distibutords 
https://vehrsdistributing.com/

Freight Brokeer (Lauren uses) 
kevin@argologisticsgroup.com', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-24T20:14:24.487Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1217756715037116');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Cost to launch mancrates ', 'https://claude.ai/chat/5f075122-7fa4-4da8-9dc7-9441ace60d16

Second claude chat 
https://claude.ai/cowork/cse_01WYVefgKLj9Rubv8wM2xhFw

Looks to be around 200+/- orders to break even - not terible 


https://docs.google.com/spreadsheets/d/1_7UisHBxwtUvyjo78APkIRKtFe-qlu4_BnWrEkXUC7M/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-24T15:14:53.835Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1213778736283451');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Retail Distro Sales', 'https://www.evenoddsco.com/ - can only contact on LinkedIn

https://choosecmc.com/ - send email 

https://www.firststepbeverage.co/

Bev Assest 
https://liquorsalesanddistribution.com/', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:11:23.424Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1216832340951090');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Bev Connect Decks', 'https://rincon-brewery.netlify.app/', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T23:05:28.297Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1216832340951065');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Client info - forever rose', 'Mendel Cabernet Sauvignon

https://app.asana.com/app/asana/-/get_asset?asset_id=1215562126841445



Domaine Laroche Chardonnay

https://app.asana.com/app/asana/-/get_asset?asset_id=1215562126841447




Gérard Bertrand Cotes des Roses Rose

https://app.asana.com/app/asana/-/get_asset?asset_id=1215562126841443



Moet & Chandon Brut Imperial Champagne

https://app.asana.com/app/asana/-/get_asset?asset_id=1215562126841441




Gratien & Meyer Crémant de Loire', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-09T21:04:27.304Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1215562126841436');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Bev Connect P&L ', 'As of Aug 10th 2026 
https://docs.google.com/spreadsheets/d/1duBbfTvLiJdgTWtn20_PkH63zJ8zfSphQKQrHAXEXfE/edit?usp=sharing

Weship Invoices 
https://secure.versapay.com/', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-01'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-02T19:17:19.595Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1219115500030966');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Bev Connect – Quarterly OKRs', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-23'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T20:12:46.412Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1219593564104040');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'INFO' LIMIT 1), 'Bev Connect – Q4 ''26 OKRs', 'Objective: Get to a $20k/mo run rate and execute holiday peak cleanly.
Q3 result: $44k rev (~$14.7k/mo), 1 new client signed.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-31'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-09T22:41:32.796Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1219370332380440');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'Ben Turk Wine Project', 'https://docs.google.com/spreadsheets/d/13mKDiX7sQ8W03OXdZQ3DrYrDzEbCfCtYD1SWbzhaY0k/edit?usp=sharing

https://claude.ai/chat/95154a7b-906f-412d-bc61-8def8a2c66d1', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-14T18:17:23.341Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1218471588671679');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'BevConnect - invoicing', 'https://dashboard.stripe.com/acct_1UBiXJCdMo0153Tu/dashboard

https://claude.ai/project/019f1ec2-0969-7511-8822-b44ccb0c321f

New

https://docs.google.com/spreadsheets/d/16r1zV0wQSZI0lapXah9G7ALzCGDW7h7TV_DsLWLzdms/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1s1A1UB3DKa3lrx_CWvcDcAbJ8a0NughZ1jic7BIyP-U/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1luSBnD6QzblnuRE98dJVaqEYWnMAFNGSyg5EyNlfBW8/edit?usp=sharing



OLD
https://docs.google.com/spreadsheets/d/1VJCyCtThoSoMVlQzhsRbn4S-78yJUWllVYGxbAA4_ww/edit?usp=sharing


https://docs.google.com/spreadsheets/d/1R4SPVLOE7DgwmP2L7PCvQ01JIbQdn6I_/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

WeShip - Versapay
https://secure.versapay.com/


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-01'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-05T23:19:19.288Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1219192441219042');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'Review lead Funnel System', 'https://docs.google.com/document/d/1Ax2_KEWU6Tft8m4xa6p7EP5hdH3-3iKd/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-24T22:17:13.547Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1213397876204716');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'Finish ABC app', 'https://abcbiz.abc.ca.gov/login?redirect=https://services.abc.ca.gov/manage/applications/license/69614a89b94ceb043776d49d

chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://www.abc.ca.gov/wp-content/uploads/forms/ABC-255.pdf

https://land.cityofventura.ca.gov/energov_prod/selfservice#/dashboard', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2027-01-11'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-13T21:45:30.512Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1212765765109905');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'More results graphs for bevconnect', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-04T19:42:48.807Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1211826769424113');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'To Do' LIMIT 1), 'Bev Connect to do', 'https://docs.google.com/document/d/1sdoLRSyPYdkNlO5zWIoVNWPuBz0YJ6AQBIdxJ2aZ-Vc/edit?usp=sharing

https://drive.google.com/file/d/1qLv9cOMZBnaX24cRo5WEbdPHBn7FtCRo/view?usp=drive_link

https://app.pitch.com/app/presentation/ad926659-e792-4c9f-9aa1-fd025abf85ff/ff772b11-00d6-49bd-836f-013cf08f56d6', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-25T21:38:12.688Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1210891675344712');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'Doing' LIMIT 1), 'Fulfillment Project - FOX Holiday Client Gift (Perfect Promos) - BC-2026-1002-02', 'Status

    Quote signed by client 10/6/2026 - Debra Gillham, Owner, Perfect Promos. Client PO / Ref: DG4829F
    Bev Connect countersignature still blank on page 2.
    Production is gated on 3 things: signed quote (DONE), address file (OPEN), wine seller-of-record route confirmed (OPEN)

Client

    Perfect Promos (reseller) on behalf of end client FOX
    Debra Gillham - debrag@perfectpromos.net - (512) 426-7287
    Original request email: https://mail.google.com/mail/u/0/#inbox/FMfcgzQhWfXsVStRNhCkvpPcKFTxNdfm

Scope

    60 gifts to 60 individual addresses
    Each gift: cutting board + cheese knife set + 1 bottle California wine + any client card/insert
    Components arrive from up to 3 vendors (boards, knives, wine)
    We supply: wine-rated shipper with molded single-bottle insert, void fill, tape, label
    Ship UPS Ground, adult signature 21+ on every parcel, Lower 48 only; tracking file returned on ship day
    Parcel priced at up to 16 x 12 x 6 in / 10 lb. Larger means reprice in writing

Pricing - $2,680.20 total ($44.67/gift)

Line
Qty
Rate
Amount
Inbound receiving and putaway
3
$30.00
$90.00
Gift kitting, pick and pack
60
$5.00
$300.00
Packaging materials
60
$5.25
$315.00
UPS Ground (firm, incl. fuel + peak)
60
$26.50
$1,590.00
Adult signature 21+
60
$5.92
$355.20
Compliance and address screening
60
$0.50
$30.00

    Optional: 2-Day Air upgrade for East/Central recipients, priced on address file.

Key terms (signed page 2)

    Invoice on ship day, due on receipt
    Per-unit rates apply to actual qty received and shipped
    Changes to count, size/weight, packaging, or service level repriced in writing (email OK) before production
    Returns from bad addresses or 3 failed signature attempts re-ship at quoted outbound rate
    Client retains title to goods; wine ships only under confirmed licensed seller-of-record route, eligible states only
    Liability capped at fees paid for affected units; we file carrier claims
    First 30 days storage included

Timeline (targets)

    Components in by Dec 1
    Ship by Dec 8
    Ground transit from Ventura: West 1-2 days, Central 3-4, East 5
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-12-08'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T21:28:31.745Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1219223126642473');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'Complete' LIMIT 1), 'Actual weight for 12 and 24 pack beer ', '12oz
12 pk - 10lbs
24pl - 20lbs
12pk boxed - 11lbs

16oz
12pk - 13lbs 6oz
24pk - 26lbs 12oz
12pk - 14lbs 8oz', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-15T19:17:53.854Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1214851315896593');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'Complete' LIMIT 1), 'Send Nipyata invoice', 'https://docs.google.com/spreadsheets/d/1bNNaC-LnXQUTJgvKzMTsgNuvx_xM2gOJRc2dHMKZrXk/edit?usp=sharing

https://qbo.intuit.com/

https://docs.google.com/spreadsheets/d/1ogsoJaZybqwuwBNaWkxxirw0j0COAdvAPoculZoGMdg/edit?gid=0#gid=0', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-23T21:52:04.876Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1213397429269782');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1212077752730534'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1212077752730534') AND name = 'Marketing' LIMIT 1), 'Local Outreach', 'https://docs.google.com/spreadsheets/d/1AmMB-n3Wbs98mANgU4eXYY4RnC5YZ__w6nmt9IzCkf8/edit?usp=sharing', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-07T22:03:02.008Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1212077752730534/task/1216361311560473');

-- Bev Connect Outreach (49 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Bev Connect Outreach', 'aqua', '1216332957216426');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216332957216426'), id FROM people WHERE email = 'drew@thebevconnect.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216332957216426'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), '✉️ To Email', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), '📧 Emailed – Awaiting Reply', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), '📞 To Call', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), '🚗 To Visit', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), '🤝 In Discussion', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), 'Follow Up at a Later Date', 6);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Liquid Rails Client Outreach', 'https://docs.google.com/spreadsheets/d/1z2vVX9JQLcSW_48eQW-XAnbEdiHqYbfdmYCzymMIrak/edit?usp=sharing

https://claude.ai/chat/3d485de4-9ee4-4ebd-a7ae-2025f4707cb9', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T21:35:06.698Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218643734891266');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Follow up Friday ', 'https://claude.ai/cowork/cse_012Vpqnj3j6pP3b9maougCTa', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-23'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T21:00:45.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1219594668490573');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Strey Cellars', 'Winery — Oxnard
951 N Rice Ave | streycellars.com', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.835Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216332956835998');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Leashless Brewing', 'Brewery — Ventura
585 E Thompson Blvd | (805) 628-9474 | info@leashlessbrewing.com
Organic angle', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.839Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216328212994853');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Poseidon Brewing', 'Brewery — Ventura
5777 Olivas Park Dr Units S&T | (805) 477-0239 | info@poseidonbrewingco.com', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.840Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216330008358988');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Sespe Creek Distillery', 'Distillery — Oxnard
2451 Eastman Ave | sespecreekdistillery.com
https://www.warbringerbourbon.com/contact-warbringer

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.841Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216314037228955');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Institution Ale Company', 'Brewery — Camarillo
3841 Mission Oaks Blvd | (805) 482-3777 | info@institutionales.com
Larger regional producer; owns Pier City Cider — reference that convo if it happens first', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.862Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216332955933845');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Red Tandem Brewery', 'Brewery — Oxnard
1009 Harbor Blvd | (805) 832-4023 | redtandemsm@gmail.com', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:35:00.183Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216332957249812');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Altamont Beer Works – Briana Spitzer', 'briana@altamontbeerworks.com | Sunset | Gmail draft queued 9/24. Follow up 10/1 if no reply.', NULL, '2026-10-01'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-24T22:14:13.346Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218845044738504');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'South Norte – Ryan Brooks', 'rbrooks@southnorte.com | Sunset | Gmail draft queued 9/24. Follow up 10/1 if no reply.', NULL, '2026-10-01'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-24T22:14:13.615Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218845044744284');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Julian Hard Cider – Brian Mayer', 'bmayer@julianhardcider.biz | Sunset | Gmail draft queued 9/24. Follow up 10/1 if no reply.', NULL, '2026-10-01'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-24T22:14:13.352Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218845044744218');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Jiant – Larry Haertel Jr.', 'larry@drinkjiant.com | Sunset | Gmail draft queued 9/24. Follow up 10/1 if no reply.', NULL, '2026-10-01'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-24T22:14:13.369Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218845044738762');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '✉️ To Email' LIMIT 1), 'Eel River Brewing – Ted Vivatson', 'ted@eelriverbrewing.com | Sunset | Gmail draft queued 9/24. Follow up 10/1 if no reply.', NULL, '2026-10-01'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-24T22:14:13.327Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218845229635350');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '📞 To Call' LIMIT 1), 'Four Brix Winery', 'Winery — Ventura
2290 Eastman Ave #109 | (805) 256-6006 | fourbrixwine.com
Angle: wine club fulfillment; co-located with Pier City Cider (double visit)
Part of the Fermentation house now in Santa paula 
https://www.google.com/search?q=Fermentation+House.&sourceid=chrome&ie=UTF-8#', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.836Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216314036821566');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '📞 To Call' LIMIT 1), 'Channel Islands Distillery', 'Distillery — Oxnard (verify address)
cistill.com
VC''s first craft distillery; has e-comm shop

https://mail.google.com/mail/u/0/#search/Mike/KtbxLxGPqcjRNQwfwcbwSFfhBNdKTsjWpg', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:35:00.205Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216328212954133');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'Balcom Canyon Cider', 'Cider — Ventura
4464 McGrath St #110 | IG: balcomcanyoncider
In Vons + 500 locations; e-comm fulfillment angle', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.840Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216314036577066');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'Paria Tequila - Seb', 'https://pariatequila.com/
seb@pariatequila.com

Sebastian Ashton 

Notes
    Australia-based 
    Launching in Aus in two weeks 
    Wants to launch in OR, then CA 
    Needs lic info and wholesale/importer relationship 

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T21:03:33.834Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216322203200663');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'Bamko - Steve', 'steve@lapgevity.com

works with https://bamko.net/
Large promo products co

https://mail.google.com/mail/u/0/#search/steve%40lapgevity.com/FMfcgzQhVNdCFbRNDSGdjLzPkcZMJPdL

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:10:04.401Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216606014360692');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'Tasting Collection - Tom', 't.vandervegt@tastingcollection.com

Tom Vanderveg

    looking for partner to import and ship in the US 
    sells tasting sets 
    needs help impoorting and with hoops there
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:12:38.195Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216606014360698');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'FranzeseWine.com - Sam', 'sam@franzesewine.com

Phone:
9168340444
Company:
Franzese Wine
Volume:
500–2,000

    does a lot of volume
    needs to move from inhouse to 3pl 
    vetting a few places
    wants to be mindful of margins and I suggested a custom proposal for them
https://mail.google.com/mail/u/0/#search/sam%40franzesewine.com/KtbxLwGrVJVDbtJWlsxttvqpxNgvvNZRjq', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:13:32.116Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216606014360701');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🤝 In Discussion' LIMIT 1), 'Hell Bent Cocktails', 'Ben - CEO - ben@hellbentcocktails.com
Danielle - COO - danielle@hellbentcocktails.com
https://hellbentcocktails.com

    Owned by Seth Green
    Going to promote on his Cocktail judge show 
https://drive.google.com/file/d/1dfGNUS8U4UoHmkBdZSpD7wbu8_VRXXqm/view?usp=sharing
https://drive.google.com/file/d/14S_cIRHSDmEHOB6XDoqwbigwlUyEUnvG/view?usp=sharing

WEbsite 
https://hellbent-cocktails.netlify.app/

Proposal', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:17:07.485Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216832340951092');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Fiddlehead Cellars — SB cold, no reply', 'Emailed 7/16. tastings@fiddleheadcellars.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.082Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644588575027');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Presqu''ile — SB cold, no reply', 'Emailed 7/20. info@presquilewine.com. Santa Maria.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.127Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756724224');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Piedrasassi — SB cold, no reply', 'Emailed 7/10 and 7/16. info@piedrasassi.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.150Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756818430');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Flying Goat Cellars — SB cold, no reply', 'Emailed 7/16. info@flyinggoatcellars.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.361Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727484028');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Sandhi Wines — SB cold, no reply', 'Emailed 7/10 and 7/16. wine@sandhiwines.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.071Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644588436409');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Grassini Family Vineyards — SB cold, no reply', 'Emailed 7/20. tastingroom@grassinifamilyvineyards.com.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.131Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644588186560');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Sea Smoke — SB cold, no reply', 'Emailed 7/10 and 7/20. customerservice@seasmoke.com.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.101Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756594296');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Lompoc Wine Factory — SB cold, no reply', 'Emailed 7/16. info@lompocwinefactory.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.245Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669396699');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Third Window Brewing — SB cold, no reply', 'Emailed 7/20. info@thirdwindowbrewing.com. Santa Barbara.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.235Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727436835');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Pali Wine Co — SB cold, no reply', 'Emailed 7/20. team@paliwineco.com. Lompoc Wine Ghetto.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.572Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644825287665');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Andrew (cilauro.andrew@gmail.com) — SB beer cold, no reply', 'Emailed 7/21. Confirm which brewery he''s with.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.229Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669063143');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Sunstone — SB cold, no reply', 'Emailed 7/21. info@sunstonewinery.com. Santa Ynez.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.087Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727325504');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Night Lizard Brewing — SB cold, no reply', 'Emailed 7/10. info@nightlizardbrew.com. Santa Barbara.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.325Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727328091');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Brewer-Clifton — SB cold, no reply', 'Emailed 7/10 (subject said ''beer'' by mistake). info@brewerclifton.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.230Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669353202');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Captain Fatty''s (Roque) — SB cold, no reply', 'Emailed 7/20. roque@captainfattys.com. Goleta.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.283Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727468458');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Longoria Wines — SB cold, no reply', 'Emailed 7/16. info@longoriawine.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.215Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669426251');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Ampelos Cellars — SB cold, no reply', 'Emailed 7/16. info@ampeloscellars.com. Lompoc.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.274Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644727409241');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Kunin Wines — SB cold, no reply', 'Emailed 7/16. info@kuninwines.com. Santa Barbara.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.253Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644668889945');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Santa Barbara Winery — SB cold, no reply', 'Emailed 7/21. info@sbwinery.com. SB day-trip.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.249Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756838142');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Zaca Mesa — SB cold, no reply', 'Emailed 7/21. info@zacamesa.com. Los Olivos area.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.220Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756261672');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Jaffurs Wine — SB cold, no reply', 'Emailed 7/21. info@jaffurswine.com. SB day-trip.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.273Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644588302180');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Beckmen Vineyards — SB cold, no reply', 'Emailed 7/21. info@beckmenvineyards.com. Los Olivos area.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.115Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644756794017');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Brander — SB cold, no reply', 'Emailed 7/21. tr@brander.com. Los Olivos area.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.201Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669259593');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '🚗 To Visit' LIMIT 1), 'Alma Rosa — SB cold, no reply', 'Emailed 7/16 and again 7/21. info@almarosawinery.com. Buellton.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-18T20:21:12.096Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1218644669345589');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '📧 Emailed – Awaiting Reply' LIMIT 1), 'MadeWest Brewing', 'Brewery — Ventura
1744 Donlon St | (805) 947-5002 | madewest.com
Angle: canned distribution brand; merch + gifting
Doesnt seem to have a email to contact', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-06T20:34:59.839Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216316122694431');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = '📧 Emailed – Awaiting Reply' LIMIT 1), 'jack Abby', 'andrewg@jacksabby.com

Connected by justin@boxioship.com (great people to connet with ) ', NULL, NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T23:14:39.301Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216832340951071');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = 'Follow Up at a Later Date' LIMIT 1), 'Mandala Tequila ', '    info@tequilamandala.com


Craig 
562-857-8000

    called to chat
    using Reserve Bar / 
', NULL, NULL, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-08T21:54:24.961Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216402563958823');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216332957216426'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216332957216426') AND name = 'Follow Up at a Later Date' LIMIT 1), '2 Bar Spirits', 'nathan@2barspirits.com


Not interested but may be in the future', NULL, NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:16:38.862Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216332957216426/task/1216606014360710');

-- Product Launch Plan — All Brands (2026) (24 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Product Launch Plan — All Brands (2026)', 'green', '1216203484045274');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216203484045274'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), 'NOW — Launch this quarter', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), 'NEXT — Scoped backlog', 2);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Family Game Night Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 250 | Complexity: Medium | Season: Evergreen | Variant of Game Night build.', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.540Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179289770840');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Family Movie Night Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 150 | Complexity: Medium | Season: Evergreen | Variant of Movie Night build.', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.613Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179011871563');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Healthy Food Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 150 | Complexity: Medium | Season: Evergreen', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.600Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178912218468');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty] Tea Gift (Blooming Tea)', 'Brand: Bounty | Search volume: 600 | Complexity: Hard | Season: Evergreen', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.546Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178967569289');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty] Cocktail Subscription Box', 'Brand: Bounty | Search volume: 500 | Complexity: Easy | Season: Evergreen | Recurring-revenue play; needs subscription infra.', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.528Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178911887220');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Gourmet Food Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 200 | Complexity: Medium | Season: Evergreen', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.602Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178912129666');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Picnic Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 150 | Complexity: Medium | Season: Summer', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.597Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179289636910');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[BroBasket] Grilling Gift Basket / Smash Burger Kit', 'Brand: BroBasket | Search volume: 200 | Complexity: Easy | Season: Summer', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.531Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178911990920');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[BroBasket] In Case of Emergency Break Glass (whiskey)', 'Brand: BroBasket | Search volume: 150 | Complexity: Easy | Season: Evergreen | Novelty gift.', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.585Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179289661786');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Frequent Flyer Cocktail Kit (travel gifts)', 'Brand: Bounty + BroBasket | Search volume: 200 | Complexity: Easy | Season: Evergreen', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.542Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179289800197');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Italian Food Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 250 | Complexity: Medium | Season: Evergreen | Anchor for the cuisine cluster (collection-page SEO play).', NULL, NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.533Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178967350531');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Dark Chocolate Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 350 | Complexity: Medium | Season: Evergreen | Variant of existing chocolate build.', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.534Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179277542856');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Food Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 400 | Complexity: Medium | Season: Evergreen', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.586Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178966602547');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[BroBasket] Old Fashioned Gift Set', 'Brand: BroBasket | Search volume: 500 | Complexity: Easy | Season: Evergreen', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.543Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179011539435');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Snacks From Around the World Box', 'Brand: Bounty + BroBasket | Search volume: 150 | Complexity: Hard | Season: Evergreen | Sourcing-heavy international assortment.', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.589Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179011599857');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Vegan Cheese Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 200 | Complexity: Medium | Season: Evergreen | Needs vegan cheese sourcing.', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.616Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179011597182');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NEXT — Scoped backlog' LIMIT 1), '[Bounty + BroBasket] Fruit & Chocolate Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 200 | Complexity: Medium | Season: Evergreen', NULL, NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:44.533Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178966887149');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket] Japanese Candy Box', 'Brand: BroBasket | Search volume: 1,900 | Complexity: Hard | Season: Evergreen | Sourcing-heavy (imported candy assortment).', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.494Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179277354571');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket] Espresso Martini Gift Set', 'Brand: BroBasket | Search volume: 700 | Complexity: Easy | Season: Evergreen | Easy build; vodka + coffee liqueur kit.', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.493Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216179011556931');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket + BoozeFinders] Beer & Booze Advent Calendar', 'Brand: BroBasket + BoozeFinders | Complexity: Medium | Season: Q4 / Holiday | Companion to beer advent; could include wine/champagne variant.', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.492Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216203484030664');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket + BoozeFinders] Beer Advent Calendar (like Give Them Beer)', 'Brand: BroBasket + BoozeFinders | Search volume: 4,100 | Complexity: Medium | Season: Q4 / Holiday | Highest-volume opportunity across all brands. Ref: givethembeer.com/pages/adult', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.508Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178911474587');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[Bounty + BroBasket] Wedding Gift Basket', 'Brand: Bounty + BroBasket | Search volume: 1,000 | Complexity: Easy | Season: Spring/Summer | Buildable from existing components; recipient-neutral for Bounty.', NULL, NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.494Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178911680569');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket] Exploding Gift Box (BroBox confetti reveal)', 'Brand: BroBasket | Search volume: 800 | Complexity: Hard | Season: Evergreen | Novelty packaging build.', NULL, NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.505Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178967532226');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216203484045274'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216203484045274') AND name = 'NOW — Launch this quarter' LIMIT 1), '[BroBasket] Custom Label Liquor Bottles (many brands)', 'Brand: BroBasket | Search volume: 1,000 | Complexity: Medium | Season: Evergreen | Needs supplier/label sign-off per brand.', NULL, NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-30T21:18:20.495Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216203484045274/task/1216178966504695');

-- Go-To Gifting Holdco Plan 2027 (0 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Go-To Gifting Holdco Plan 2027', 'green', '1218882365508451');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1218882365508451'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218882365508451'), 'To do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218882365508451'), 'Doing', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218882365508451'), 'Done', 3);

-- SEO Content Optimization — Booze Finders (Surfer × Claude) (33 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('SEO Content Optimization — Booze Finders (Surfer × Claude)', 'green', '1216831689545342');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216831689545342'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216831689545342'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), '▶ START HERE', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), '🎯 Backlog — prioritized', 2);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '▶ START HERE' LIMIT 1), 'READ FIRST — How this project works', 'This board is a pipeline. Each collection/product page is a card that moves through the columns:

1. Pull content → 2. Surfer audit → 3. Claude optimization → 4. Re-check in Surfer → 5. Publish to Shopify → Done & monitoring.

Work order: (1) clear the ''Site-wide fixes (do first)'' column, (2) then Tier 1 backlog cards, (3) then Tier 2, (4) then Tier 3, (5) then product pages.

Definition of Done for every card: Surfer 70+, unique description, primary keyword in H1 + first sentence + meta title, meta title <=60 chars, meta description <=155 chars, 3-5 internal links, facts verified, published in Shopify.

Claude prompt to use in step 3 is in the SOP (BoozeFinders-SEO-SOP.md).', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:20.702Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831711453031');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '▶ START HERE' LIMIT 1), 'Optimize Collections  On BoozeFinders', 'Hey https://app.asana.com/1/1200828512126939/profile/1201500833217140 a good project here for the team. 

We are using this sheet 
https://docs.google.com/spreadsheets/d/1WuX8DIf7trCRJ05J6MZ0P0Q-CqhsnATtJiud8-jRz4E/edit?usp=sharing

And https://app.surferseo.com (This email has access: crismaryann.twb@gmail.com )

How to do this 
https://www.loom.com/share/02ca08fa69f543b984109ec229452b04

https://app.asana.com/app/asana/-/get_asset?asset_id=1216832340951101


', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T19:14:14.891Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216832340951096');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Ale (15) — /collections/ale-1', 'URL: https://boozefinders.com/collections/ale-1  (canonical after duplicate cleanup; old /collections/ale now 301-redirects here)
Primary keyword: ale beer gift
Secondary: craft ale gift
Products: 15 | Target: Surfer 70+', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.969Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689961709');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Tequila (30) — /collections/tequila', 'URL: https://boozefinders.com/collections/tequila
Primary keyword: tequila gifts
Secondary: tequila gift set, tequila delivery
Products: 30 | Target: Surfer 70+', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.836Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721637645');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] London Dry Gin (2) — /collections/london_dry_gin', 'URL: https://boozefinders.com/collections/london_dry_gin
Primary keyword: london dry gin (head term ~2,400/mo — strong opportunity)
Secondary: london dry gin gift
Products: 2 | Target: Surfer 70+', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.926Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721348322');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] IPA (8) — /collections/ipa', 'URL: https://boozefinders.com/collections/ipa
Primary keyword: ipa beer gift
Secondary: ipa gift pack
Products: 8 | Target: Surfer 70+', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.879Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721694909');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Whisky (59) — /collections/whiskey-whisky', 'URL: https://boozefinders.com/collections/whiskey-whisky
Primary keyword: whiskey gifts
Secondary: whiskey gift set, whisky gift delivery
Products: 59 | Target: Surfer 70+', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.848Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712147586');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Irish Whiskey (10) — /collections/irish_whiskey', 'URL: https://boozefinders.com/collections/irish_whiskey
Primary keyword: irish whiskey gift
Secondary: irish whiskey gift set
Products: 10 | Target: Surfer 70+', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.955Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689393419');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Vodka (14) — /collections/vodka', 'URL: https://boozefinders.com/collections/vodka
Primary keyword: vodka gifts
Secondary: vodka gift set
Products: 14 | Target: Surfer 70+', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.997Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831711790951');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Belgian Styles (9) — /collections/belgian-styles', 'URL: https://boozefinders.com/collections/belgian-styles
Primary keyword: belgian beer gift
Secondary: belgian beer gift set
Products: 9 | Target: Surfer 70+', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.899Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721524426');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Rum (7) — /collections/rum', 'URL: https://boozefinders.com/collections/rum
Primary keyword: rum gift set
Secondary: rum gift basket
Products: 7 | Target: Surfer 70+', NULL, NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.996Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712682764');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Ready-To-Drink RTD (10) — /collections/ready-to-drink-rtd', 'URL: https://boozefinders.com/collections/ready-to-drink-rtd
Primary keyword: canned cocktails gift
Secondary: RTD cocktail delivery
Products: 10 | Target: Surfer 70+', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.967Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831656017959');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Gin (4) — /collections/gin', 'URL: https://boozefinders.com/collections/gin
Primary keyword: gin gift set
Secondary: gin gifts delivery
Products: 4 | Target: Surfer 70+', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.975Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721921253');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Liqueurs & Cordials (10) — /collections/liqueurs_-_cordials', 'URL: https://boozefinders.com/collections/liqueurs_-_cordials
Primary keyword: liqueur gift set
Secondary: cordials gift, liqueur delivery
Products: 10 | Target: Surfer 70+', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:23.041Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831763928786');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Lager (13) — /collections/lager-1', 'URL: https://boozefinders.com/collections/lager-1  (canonical after duplicate cleanup; old /collections/lager now 301-redirects here)
Primary keyword: lager beer gift
Secondary: lager gift pack
Products: 13 | Target: Surfer 70+', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.966Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712504132');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Rye (5) — /collections/rye', 'URL: https://boozefinders.com/collections/rye
Primary keyword: rye whiskey gift
Secondary: rye whiskey delivery
Products: 5 | Target: Surfer 70+', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.908Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831656671363');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Canadian Whisky (4) — /collections/canadian_whisky', 'URL: https://boozefinders.com/collections/canadian_whisky
Primary keyword: canadian whisky gift
Secondary: canadian whisky delivery
Products: 4 | Target: Surfer 70+', NULL, NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.903Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689897169');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Bourbon (30) — /collections/bourbon', 'URL: https://boozefinders.com/collections/bourbon
Primary keyword: bourbon gifts
Secondary: bourbon gift set, bourbon gift basket
Products: 30 | Target: Surfer 70+', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.798Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831720908753');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Specialty & Niche (46) — /collections/specialty-niche', 'URL: https://boozefinders.com/collections/specialty-niche
Primary keyword: rare & specialty spirits
Secondary: hard to find liquor, unique alcohol gifts
Products: 46 | Note: confirm canonical vs ''specialty-and-niche'' duplicate | Target: Surfer 70+', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.839Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721913862');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Reposado (11) — /collections/reposado', 'URL: https://boozefinders.com/collections/reposado
Primary keyword: reposado tequila
Secondary: reposado tequila gift
Products: 11 | Target: Surfer 70+', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:23.014Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712687763');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Stout (8) — /collections/stout', 'URL: https://boozefinders.com/collections/stout
Primary keyword: stout beer gift
Secondary: stout gift pack
Products: 8 | Target: Surfer 70+', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.883Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712185250');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Spirits (140) — /collections/spirits-1', 'URL: https://boozefinders.com/collections/spirits-1  (canonical after duplicate cleanup; old /collections/spirits now 301-redirects here)
Primary keyword: liquor gift sets / buy spirits online
Secondary: spirits delivery, premium spirits online
Products: 140 | Target: Surfer 70+', NULL, NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.828Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689103364');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Mezcal (1) — /collections/mezcal', 'URL: https://boozefinders.com/collections/mezcal
Primary keyword: mezcal gift
Secondary: mezcal delivery
Products: 1 (add products first) | Target: Surfer 70+', NULL, NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.889Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689886427');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Samplers & Tasting Boxes (34) — /collections/samplers-and-tasting-boxes', 'URL: https://boozefinders.com/collections/samplers-and-tasting-boxes
Primary keyword: liquor sampler set
Secondary: alcohol tasting box, spirits sampler gift
Products: 34 | Target: Surfer 70+', NULL, NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.808Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831655416271');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Wine (15) — /collections/wine-1', 'URL: https://boozefinders.com/collections/wine-1  (canonical after duplicate cleanup; old /collections/wine now 301-redirects here)
Primary keyword: wine gifts
Secondary: wine gift delivery, wine gift set
Products: 15 | Note: already has meta title/desc | Target: Surfer 70+', NULL, NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.826Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831655895677');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Herbal Liqueur (1) — /collections/herbal_liqueur', 'URL: https://boozefinders.com/collections/herbal_liqueur
Primary keyword: herbal liqueur (head term ~2,000/mo)
Secondary: herbal liqueur gift
Products: 1 (add more products before heavy optimization) | Target: Surfer 70+', NULL, NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.894Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721913963');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Sparkling Wine (3) — /collections/sparkling-wine', 'URL: https://boozefinders.com/collections/sparkling-wine
Primary keyword: sparkling wine gift
Secondary: sparkling wine delivery
Products: 3 | Target: Surfer 70+', NULL, NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.892Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831689739369');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Non-Alcoholic & Low ABV (13) — /collections/non-alcoholic-low-abv', 'URL: https://boozefinders.com/collections/non-alcoholic-low-abv
Primary keyword: non alcoholic gifts
Secondary: alcohol free gift, NA drinks gift
Products: 13 | Target: Surfer 70+', NULL, NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.976Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721921317');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Long-tail style collections — batch (see notes)', 'After Tier 1-2 + empties are handled, batch-optimize the remaining populated style collections, e.g.: Tennessee Whiskey 2, World Whisky 2, Light Lager 6, American Lager 9, Wheat Beer 2, Milk/Oatmeal/Dry/Imperial Stout, Pale Ale 3, Brown Ale 1, Tripel 3, Quadrupel 1, Pilsner 1, Non-Alcoholic Beer 3, Pinot Noir 3, Cabernet Sauvignon 2, Chardonnay 1, Red/White Wine, Prosecco 1, Flavored Vodka 4, Spiced/White/Gold/Dark Rum, Coffee/Cream liqueur, Aperitifs 1.

Only optimize ones with >=2-3 products; fold the rest into the empty-collection prune task.', NULL, NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.865Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831712517895');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Engraved Gift Sets (49) — /collections/engraved-gift-sets', 'URL: https://boozefinders.com/collections/engraved-gift-sets
Primary keyword: engraved liquor gifts
Secondary: personalized whiskey gift, custom engraved bottle
Products: 49 | Target: Surfer 70+ (high commercial intent — prioritize)', NULL, NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.853Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831656731702');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Gifts (109) — /collections/gifts', 'URL: https://boozefinders.com/collections/gifts
Primary keyword: alcohol gifts
Secondary: liquor gifts online, alcohol gift delivery
Products: 109 | Target: Surfer 70+', NULL, NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.835Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831721879776');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Champagne (4) — /collections/champagne', 'URL: https://boozefinders.com/collections/champagne
Primary keyword: champagne gifts
Secondary: champagne delivery gift
Products: 4 | Target: Surfer 70+', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.865Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831763463087');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216831689545342'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216831689545342') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Beer (86) — /collections/beer', 'URL: https://boozefinders.com/collections/beer
Primary keyword: beer gifts
Secondary: beer gift delivery, craft beer gift set
Products: 86 | Target: Surfer 70+', NULL, NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-23T16:37:22.840Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216831689545342/task/1216831690046114');

-- SEO Content Optimization — Bounty Basket (Surfer × Claude) (42 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('SEO Content Optimization — Bounty Basket (Surfer × Claude)', 'orange', '1216863586386615');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216863586386615'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), '🛠 Site-wide fixes (do first)', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), '▶ START HERE', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), '🎯 Backlog — prioritized', 3);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🛠 Site-wide fixes (do first)' LIMIT 1), 'Re-title the ''Shop Boozey Gifts'' landing page', 'Handle gift-baskets-for-all-occasions-copy is used for the nav ''Shop Boozey Gifts'' but is titled ''Alcohol Gift Baskets for Her'' (82 products) — purpose/title mismatch. Retitle to match, e.g. ''Alcohol & Boozy Gift Baskets'', and target ''alcohol gift baskets''.', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:08.552Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629692822');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🛠 Site-wide fixes (do first)' LIMIT 1), 'Expand 3 thin wine collection descriptions', 'White Wine Gifts (~100 chars), Red Wine Gifts (~132), Rose Wine Gifts (~157) have thin copy vs ~1,400 on others. Expand to match, then run through Surfer.', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:08.434Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629722761');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🛠 Site-wide fixes (do first)' LIMIT 1), 'Align ''Gifts Under $70'' nav label vs $75 page', 'Nav ''Shop by Price'' shows ''Gifts Under $70'' but links to /collections/gifts-under-75 (titled ''Gifts Under $75''). Pick one number and make label, title, and price filter consistent.', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:08.436Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586485182');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🛠 Site-wide fixes (do first)' LIMIT 1), 'Fix ''Cocktail Gfits'' typo → ''Cocktail Gifts''', 'Collection handle ''cocktail-kits'' has the title ''Cocktail Gfits'' (typo). Fix the collection title AND the nav menu label under ''Shop Boozey Gifts''.', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:08.574Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586717220');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🛠 Site-wide fixes (do first)' LIMIT 1), '⭐ Add meta title + description to all 36 collections', 'Only 1 collection has a meta title and 4 have a meta description — Google is auto-generating the rest. This is the highest-ROI task. Formula: title ''{Occasion/Type} Gift Baskets | Delivered | The Bounty Basket Co'' (<=60 chars); description = benefit + occasion + delivery CTA (<=155 chars) with the keyword. Claude can batch-generate all 36.', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:08.965Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863672071051');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '▶ START HERE' LIMIT 1), 'READ FIRST — How this project works', 'Pipeline board: each collection/product moves through Pull content → Surfer audit → Claude optimization → Re-check → Publish → Done.

Bounty Basket specifics: body descriptions already exist on all 36 collections, so the main job is (1) adding the missing meta title + meta description, and (2) refining copy to Surfer 70+. Clear the ''Site-wide fixes'' column first, then Tier 1 → 2 → 3, then products.

Quality template: the ''Gift Baskets for Women'' collection is already fully optimized — match that bar. Claude prompt is in the SOP.', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:07.430Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586386652');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Wedding Gift Baskets — /collections/wedding-gifts', 'URL: https://thebountybasket.co/collections/wedding-gifts
Primary keyword: wedding gift baskets
Products: 139 | Needs: meta title + description', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.264Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863671991179');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Thank You Gift Baskets — /collections/thank-you-gifts', 'URL: https://thebountybasket.co/collections/thank-you-gifts
Primary keyword: thank you gift baskets
Products: 140 | Needs: meta title + description', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.264Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586445682');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Rose Wine Gifts — /collections/wine-rose', 'PK: rosé wine gift baskets | Products: 1 | Thin description — expand | Needs: meta title + description', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.309Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863671473075');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Get Well Gift Baskets — /collections/get-well-gifts', 'URL: https://thebountybasket.co/collections/get-well-gifts
Primary keyword: get well gift baskets
Products: 140 | Needs: meta title + description', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.329Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586645772');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Birthday Gift Baskets — /collections/birthday-gifts', 'URL: https://thebountybasket.co/collections/birthday-gifts
Primary keyword: birthday gift baskets
Products: 141 | Needs: meta title + description (missing) | Target: Surfer 70+', NULL, NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.275Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564722329');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Sympathy Gift Baskets — /collections/sympathy-gifts', 'URL: https://thebountybasket.co/collections/sympathy-gifts
Primary keyword: sympathy gift baskets
Products: 140 | Needs: meta title + description', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.281Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629749621');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Gifts Under $100 — /collections/gifts-under-100', 'URL: https://thebountybasket.co/collections/gifts-under-100
Primary keyword: gift baskets under $100
Products: 98 | Needs: meta title + description', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.321Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564705004');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Easter Gift Baskets — /collections/easter-gifts', 'PK: easter gift baskets | Products: 138 | Needs: meta title + description', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.464Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586260914');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Champagne & Sparkling Gifts — /collections/champagne', 'PK: champagne gift baskets | Products: 21 | Needs: meta title + description', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.442Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586611615');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Spa & Self-Care Gifts — /collections/spa-self-care', 'PK: spa gift baskets | Products: 1 | Needs: meta title + description', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.331Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863671589279');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Congratulations Gift Baskets — /collections/congratulations-gifts', 'PK: congratulations gift baskets | Products: 140 | Needs: meta title + description', NULL, NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.445Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629546963');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Anniversary Gift Baskets — /collections/anniversary-gifts', 'URL: https://thebountybasket.co/collections/anniversary-gifts
Primary keyword: anniversary gift baskets
Products: 141 | Needs: meta title + description', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.279Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863699871964');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Cocktail Gifts — /collections/cocktail-kits', 'PK: cocktail gift baskets | Products: 6 | FIRST fix title typo ''Cocktail Gfits'' | Needs: meta title + description', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.304Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564787627');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Non-Alcoholic Gifts — /collections/non-alcoholic', 'PK: non alcoholic gift baskets | Products: 13 | Needs: meta title + description', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.306Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863671915235');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] White Wine Gifts — /collections/wine-white', 'PK: white wine gift baskets | Products: 7 | Thin description — expand | Needs: meta title + description', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.316Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863699851433');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Gift Baskets for Women (Shop All) — /collections/gift-baskets-for-women', 'URL: https://thebountybasket.co/collections/gift-baskets-for-women
Primary keyword: gift baskets for women
Products: 83 | ALREADY OPTIMIZED (meta + long copy) — verify Surfer 70+ and use as the template.', NULL, NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.453Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629761178');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Holiday Gift Baskets — /collections/holiday-gifts', 'URL: https://thebountybasket.co/collections/holiday-gifts
Primary keyword: holiday gift baskets
Products: 90 | Needs: meta title + description', NULL, NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.273Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863672078768');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Corporate Gift Baskets — /collections/corporate-gifts', 'URL: https://thebountybasket.co/collections/corporate-gifts
Primary keyword: corporate gift baskets
Products: 90 | High commercial intent | Needs: meta title + description', NULL, NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.263Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564731167');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Housewarming Gift Baskets — /collections/housewarming-gifts', 'PK: housewarming gift baskets | Products: 139 | Needs: meta title + description', NULL, NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.449Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564806109');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Wine Gift Baskets — /collections/wine', 'URL: https://thebountybasket.co/collections/wine
Primary keyword: wine gift baskets
Products: 45 | Needs: meta title + description', NULL, NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.459Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564816324');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Tequila Gift Baskets — /collections/tequila-gifts', 'PK: tequila gift baskets | Products: 12 | Needs: meta title + description', NULL, NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.669Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629751005');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Red Wine Gifts — /collections/wine-red', 'PK: red wine gift baskets | Products: 9 | Thin description — expand | Needs: meta title + description', NULL, NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.431Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586717234');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Gifts Under $75 — /collections/gifts-under-75', 'PK: gift baskets under $75 | Products: 71 | Needs: meta title + description (also see nav $70/$75 label fix)', NULL, NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.660Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863699583088');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Gin Gift Baskets — /collections/gin-gifts', 'PK: gin gift baskets | Products: 5 | Needs: meta title + description', NULL, NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.701Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863672079041');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Retirement Gift Baskets — /collections/retirement-gifts', 'PK: retirement gift baskets | Products: 139 | Needs: meta title + description', NULL, NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.540Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629749170');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Shop by Occasion landing — /collections/gift-baskets-for-all-occasions', 'PK: gift baskets for all occasions | Products: 82 | Nav ''Shop By Occasion'' landing | Needs: meta title (has meta desc)', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.668Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863699551373');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Gifts Under $50 — /collections/gifts-under-50', 'PK: gift baskets under $50 | Products: 53 | Needs: meta title + description', NULL, NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.673Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629717042');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T1] Christmas Gift Baskets — /collections/christmas-gifts', 'URL: https://thebountybasket.co/collections/christmas-gifts
Primary keyword: christmas gift baskets
Products: 138 | Needs: meta title + description', NULL, NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.413Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629761049');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Chocolate Gifts — /collections/chocolate', 'PK: chocolate gift baskets | Products: 3 | Needs: meta title + description', NULL, NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.699Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564749294');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Alcohol/Boozy Gift Baskets landing — /collections/gift-baskets-for-all-occasions-copy', 'PK: alcohol gift baskets | Products: 82 | Nav ''Shop Boozey Gifts'' landing | FIRST retitle (currently ''Alcohol Gift Baskets for Her''), then meta title (has meta desc)', NULL, NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.668Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863629073732');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Valentine''s Day Gift Baskets — /collections/valentines-day-gifts', 'PK: valentine''s day gift baskets | Products: 138 | Needs: meta title + description', NULL, NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.464Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564832479');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Shop All Gifts — /collections/shop-all', 'PK: gift baskets | Products: 141 | Needs: meta title + description', NULL, NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.663Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586767529');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Just Because Gift Baskets — /collections/just-because-gifts', 'PK: just because gift baskets | Products: 138 | Needs: meta title + description', NULL, NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.945Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564832711');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Mother''s Day Gift Baskets — /collections/mothers-day-gifts', 'PK: mother''s day gift baskets | Products: 138 | Needs: meta title + description', NULL, NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:10.696Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564779327');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T3] Vodka Gift Baskets — /collections/vodka-gifts', 'PK: vodka gift baskets | Products: 17 | Needs: meta title + description', NULL, NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:12.129Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863564816126');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216863586386615'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216863586386615') AND name = '🎯 Backlog — prioritized' LIMIT 1), '[T2] Shop by Price landing — /collections/gift-baskets-by-price', 'PK: gift baskets by price | Products: 82 | Nav ''Shop by Price'' landing | Needs: meta title (has meta desc)', NULL, NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-24T18:40:20.880Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216863586386615/task/1216863586822289');

-- Lil & Mil → New Parent Gifting Pivot (16 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Lil & Mil → New Parent Gifting Pivot', 'blue-green', '1216611985108472');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1216611985108472'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), '0 · Decide & Validate', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), '1 · Product & Merchandising', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), '2 · Site & Landing Pages', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), '3 · Google Ads Build', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), '4 · Launch & Measure', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '4 · Launch & Measure' LIMIT 1), 'MILESTONE: LAUNCH — 30-day test at $600 total budget', '$600 / 30 days = ~$20/day. Manual CPC or Maximize Clicks to start — not enough conversion volume for Smart Bidding yet. Do not raise budget mid-test; let it bake. (CRO principle from the BroBasket handoff: let changes bake before shipping more.)

https://docs.google.com/spreadsheets/d/1XTNhD9mbxPkwZ1-RHdoeEe6P_MMgN_tIKBGWl6fWSss/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:32.589Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611999180138');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '4 · Launch & Measure' LIMIT 1), 'Week 1 check — search terms report, add negatives only', 'Week 1 is for cleaning the search terms report, NOT for judging performance. Add negatives for junk queries. Resist the urge to make structural changes — one week of data at $20/day is noise, not signal.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:32.660Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612191067462');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '4 · Launch & Measure' LIMIT 1), 'Post-test: write up findings + inventory movement', 'Document honestly: which ad group won, actual CVR vs. the 2% model, actual AOV vs. $90 model, units of L&M inventory cleared, true CPA. Feeds the Q4 decision — Q4 is peak gifting season and the search trend data shows a Nov/Dec spike (SV trend hits 7,000+ on ''gifts for new parents'' in Nov-Dec vs ~2,200 baseline). If the test works, Q4 is when it matters.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:32.606Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611999486709');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '0 · Decide & Validate' LIMIT 1), 'Box COGS model — land cost per SKU, confirm 60%+ gross margin', 'Build landed cost for all 5 boxes: BroBasket booze/consumables + new sourced items + Lil & Mil inventory (at cost) + packaging + fulfillment labor + shipping. Target 60%+ GM at listed price points. If Fourth Trimester or Survival Kit can''t hit it, reprice or recut contents BEFORE any ad spend. This gates everything downstream.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:26.781Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612191028663');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '3 · Google Ads Build' LIMIT 1), 'Write ad copy — 3 RSAs per ad group', 'Message-match each ad group. AG3 headline angle: ''A Gift for Her, Not the Baby.'' AG2: ''The New Dad Basket.'' AG4: ''The Baby Shower Gift They''ll Actually Use.'' Do NOT lead with alcohol in ad copy — zero search demand for it AND Google alcohol ad policy restrictions. Sitelinks to booze-free variants.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:31.497Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611999484423');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '3 · Google Ads Build' LIMIT 1), 'Add Tier 3 delivery/urgency terms as a separate high-bid ad group', 'Low volume (~250/mo) but CPCs of $1.00-$2.00 signal real transactional urgency: ''new mom gift basket delivery'' ($1.30), ''food delivery gifts for new parents'' ($2.00), ''new parents gift basket delivery'' ($1.00). BroBasket already solves delivery — this is our natural strength. Separate ad group so the high CPCs don''t distort bidding elsewhere.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:31.331Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611984928519');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '3 · Google Ads Build' LIMIT 1), 'Build negative keyword list', 'Block: etsy, amazon, personalized, custom, monogram, DIY, homemade, how to make, ideas (informational), registry, free, cheap, diaper cake, diaper bag (per existing L&M negative strategy), used, wholesale, bulk.

Also add as negatives the two big informational heads we''re deliberately NOT bidding: ''gifts for new parents'' and ''best gifts for new parents'' — 4,400/mo of listicle-intent traffic that will eat budget and buy on Amazon.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:31.294Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612058334312');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '3 · Google Ads Build' LIMIT 1), 'Build campaign structure — 4 ad groups, exact + phrase match', 'AG1 GIFT BOX CORE (~4,600/mo, CPC $0.50-0.90): new mom gift basket, new parents gift basket, new parent care package, new mom gift box, care package for new parents, gift baskets for new parents, gift boxes for new moms, new mom basket, mom to be gift basket

AG2 NEW DAD (~610/mo, CPC $0.40): new dad gift basket, new dad care package, gift basket for new dad, new dad gift box, new dad basket

AG3 NON-BABY WEDGE (~1,400/mo, CPC $0.25): gifts for new moms that aren''t for the baby, non baby gifts for new parents, gifts for new moms self care, self care gift for new mom

AG4 BABY SHOWER PRACTICAL (~2,310/mo): baby shower gift box, practical baby shower gifts for new parents, baby shower gifts for new parents, baby shower gifts for mom and dad

See spreadsheet tab ''Keyword Targets'' for the full list with volumes and CPCs.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:31.378Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611984901803');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '1 · Product & Merchandising' LIMIT 1), 'Product photography — 5 boxes, styled + flat-lay contents', 'Photography is the single biggest conversion lever at a $65-110 price point. Each box: hero styled shot, flat-lay of contents, lifestyle/in-context shot. Booze-free variants need their own hero (not a cropped booze shot). Cheap-looking photos kill a $95 gift box faster than any pricing problem.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:28.290Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612058334273');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '1 · Product & Merchandising' LIMIT 1), 'Write PDP copy for all 5 boxes + variants', 'Positioning per box. Baby Shower Box leads with PRACTICAL — ''the gifts they''ll actually use'' against a table of onesies. Fourth Trimester leads with ''this one is for her, not the baby.'' Booze-free framed as a first-class choice (''thoughtful for nursing parents''), never as a lesser version. Booze is discovered on the PDP, not promised in the ad.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:28.162Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612190997394');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '1 · Product & Merchandising' LIMIT 1), 'Finalize the 5-box lineup and contents', '1. The Fourth Trimester — $95 / $75 BF — for MOM, zero baby items (owns the non-baby wedge)
2. The New Dad Basket — $85 — uncontested, pure BroBasket build
3. The Survival Kit (New Parents) — $110 / $90 BF — workhorse, 2-3 Lil & Mil practical items
4. The Practical Baby Shower Box — $65 — no booze, Lil & Mil inventory clearer
5. The Congrats Crate — $75 / $60 BF — entry price point

Every box that can have booze needs a booze-free twin at a lower price. See the gift box spreadsheet for full contents.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:28.195Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612249251185');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '1 · Product & Merchandising' LIMIT 1), 'Source new non-baby items (skincare, snacks, coffee, sleep mask)', 'The Fourth Trimester needs items BroBasket doesn''t already stock: quality skincare, one-handed-eatable snacks, sleep mask, good chocolate. Start with 2-3 suppliers at minimum viable order quantities — do NOT commit to large MOQs before the ad test proves demand.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:28.259Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611985181974');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '2 · Site & Landing Pages' LIMIT 1), 'Verify conversion tracking end-to-end (GA4 + Google Ads + Meta CAPI)', 'Test a real purchase through each box type before spending a dollar. At a $350/mo budget there is zero room for a broken conversion tag — you''d burn the whole test learning nothing. Meta Pixel + CAPI already configured; confirm it fires for the new SKUs.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:29.542Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612191015766');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '2 · Site & Landing Pages' LIMIT 1), 'Set up Merchant Center feed for the 5 gift box SKUs', 'Shopping Ads appear on the money terms (the ''gifts for new parents'' SERP shows Shopping Ads + Shopping carousel). Feed must be clean: GTINs or exemptions, correct product category, alcohol-containing SKUs flagged per Google policy. NOTE: Google restricts alcohol advertising — booze-free variants may be the only ones eligible for Shopping. Verify before building the feed.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:29.562Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612058334289');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '2 · Site & Landing Pages' LIMIT 1), 'Build sub-landing pages: /new-dad-gifts and /baby-shower-gifts', 'Message-match matters at these CPCs. ''New dad gift basket'' ad → new-dad page, not a generic collection. Baby shower ad → practical-baby-shower page featuring Lil & Mil inventory. Generic landing pages are the most common way cheap clicks get wasted.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:29.537Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216611984897825');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1216611985108472'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1216611985108472') AND name = '2 · Site & Landing Pages' LIMIT 1), 'Build /new-parent-gifts collection landing page', 'Primary paid-traffic destination. Needs: all 5 boxes above the fold, booze/booze-free toggle, delivery-speed callout, gift-message option, trust signals. This is the campaign''s landing page — Google Ads cannot run without it.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T23:08:29.750Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1216611985108472/task/1216612191051482');

-- Lil & Mil → New Parent Gift Store + Headless lilandmil.com (6 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Lil & Mil → New Parent Gift Store + Headless lilandmil.com', 'none', '1218525300353333');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1218525300353333'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), '1. Decisions (Mon–Tue)', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), '2. Stock clearance', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), '5. Store rebrand', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), '6. Cutover & launch', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = 'To Do' LIMIT 1), 'Follow up on tasks ', 'https://claude.ai/chat/00e58e0a-a3dd-4c09-b896-ff90e8c31124', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-16T22:41:21.783Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218562542145152');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = '5. Store rebrand' LIMIT 1), 'Port bb-product-addons (card / engraving) from BroBasket', 'Planning chat: https://claude.ai/chat/55b45a01-c7e5-4e8b-9f84-24ddef2778ae', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T21:00:45.145Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218525397058168');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = '1. Decisions (Mon–Tue)' LIMIT 1), 'Pull September ad test results vs $25 CPA kill criterion', 'Go/no-go input before committing to the full rebuild.

Planning chat: https://claude.ai/chat/55b45a01-c7e5-4e8b-9f84-24ddef2778ae', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T21:00:39.592Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218525244367902');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = '6. Cutover & launch' LIMIT 1), 'Domain cutover: new primary domain, lilandmil.com → Netlify, 301 stroller leash URL, re-verify GMC/Meta/GSC/Klaviyo', 'Planning chat: https://claude.ai/chat/55b45a01-c7e5-4e8b-9f84-24ddef2778ae', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T21:00:46.833Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218525205166308');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = '6. Cutover & launch' LIMIT 1), 'MILESTONE: New gift store + headless lilandmil.com live', 'Planning chat: https://claude.ai/chat/55b45a01-c7e5-4e8b-9f84-24ddef2778ae', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T21:00:46.838Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218525337783285');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218525300353333'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218525300353333') AND name = '2. Stock clearance' LIMIT 1), 'Set monthly unit-clearance target per SKU', 'Corrected stock is ~$18k at cost. Set per-SKU monthly targets so we know which extra channels are needed beyond baskets.

Planning chat: https://claude.ai/chat/55b45a01-c7e5-4e8b-9f84-24ddef2778ae', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-15T21:00:40.824Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218525300353333/task/1218525205180559');

-- TikTok Creator Operations — Lil & Mil (26 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('TikTok Creator Operations — Lil & Mil', 'none', '1214028818737324');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214028818737324'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '01 · Source Creators', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '02 · Seed Product', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '03 · Follow Up to Post', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '04 · Repurpose Content', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '05 · Spark Ads', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), '06 · Retainer', 6);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '01 · Source Creators' LIMIT 1), 'Search TikTok hashtags for creator candidates', 'Search: #strollermom #babygear #momtok #newmom #babyhacks #toddlerlife #strollerlife. Watch 5–10 videos per hashtag. Flag anyone with natural, authentic energy and real engagement.', NULL, '2026-04-18'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.898Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214023281333233');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '01 · Source Creators' LIMIT 1), 'Apply creator filter to all candidates', 'Criteria: 2K–200K followers, 3%+ engagement rate, posted within 30 days, baby/parenting niche. Bonus: already tags TikTok Shop products.', NULL, '2026-04-18'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.896Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214028818740758');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '01 · Source Creators' LIMIT 1), 'Tier all qualified creators (A / B / C)', 'Tier A = 50K–200K. Tier B = 10K–50K (sweet spot). Tier C = 1K–10K (highest conversion, easiest to activate). Prioritize Tier B in outreach.', NULL, '2026-04-18'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.950Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590738185');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '01 · Source Creators' LIMIT 1), 'Log 20 creators in Creator Tracker (weekly goal)', 'Fields: TikTok handle, follower count, avg views, niche tags, tier, outreach method, date added. One row per creator in the shared Google Sheet. Flag any HOT LEADS.', NULL, '2026-04-18'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.938Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355198801');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '02 · Seed Product' LIMIT 1), 'Send personalized outreach DM to all sourced creators', 'Use the DM template but personalize the first line — mention a specific video they made. Do NOT send copy-paste blasts. Log outreach date + set status to ''DM Sent'' in tracker.', NULL, '2026-04-22'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.880Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214028818718669');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '02 · Seed Product' LIMIT 1), 'Send address collection form to interested creators', 'Once a creator says yes, send the Google Form / Typeform link to collect shipping address. Do not ask for address over DM. Log address in tracker.', NULL, '2026-04-23'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.870Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214023281331297');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '02 · Seed Product' LIMIT 1), 'Fulfill and ship product with handwritten note + card', 'Ship Stroller Saver + short card with affiliate link QR code and commission info. Handwritten note if possible — it gets photographed and reshared. Log ship date + tracking number in tracker.', NULL, '2026-04-25'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.888Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024277370717');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '02 · Seed Product' LIMIT 1), 'Set follow-up reminder for 3 days post-delivery', 'Use tracking info to estimate delivery date. Set a task/reminder to trigger the Day 3 follow-up DM. Update tracker status to ''Delivered'' once confirmed.', NULL, '2026-04-28'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.893Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590736647');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '03 · Follow Up to Post' LIMIT 1), 'Send Day 3 check-in DM (post-delivery)', 'Message: ''Hey! Just checking — did the Stroller Saver arrive? 📦 Let me know if anything looks off!'' Keep it warm and casual. Update tracker status.', NULL, '2026-04-30'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.887Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355198640');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '03 · Follow Up to Post' LIMIT 1), 'Send Day 7 hook ideas DM', 'Send 2–3 ready-to-use hooks to remove the friction. Options: ''This $20 thing saved my stroller walks…'' / ''POV: you finally stop picking toys up off the ground'' / ''Things I wish someone told me before my first stroller walk''', NULL, '2026-05-04'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.887Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355198704');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '03 · Follow Up to Post' LIMIT 1), 'Send Day 14 final nudge DM', 'Mention affiliate earnings potential (~$300/month avg). If still no post after this, close loop gracefully and log as ''No Post'' in tracker. No guilt — move on.', NULL, '2026-05-08'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.041Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355187935');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '03 · Follow Up to Post' LIMIT 1), 'Engage with post within 30 minutes of going live', 'Comment, like, share to brand account. Screenshot video + stats. Log post URL in tracker. Immediately flag for Spark Ads evaluation. Update status to ''Posted''.', NULL, '2026-05-15'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.109Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024277370533');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '04 · Repurpose Content' LIMIT 1), 'Download creator video (watermark-free) + save to Drive', 'Use SnapTik or TikTok native save. Store in Google Drive: /Creator Content/[Handle]/. File naming: YYYYMMDD_handle_product.mp4', NULL, '2026-05-15'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.053Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214028818742277');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '04 · Repurpose Content' LIMIT 1), 'Repost to brand TikTok with creator tag', 'Use TikTok Repost button or post as Duet/Stitch. Caption template: ''We love seeing parents find their people 💛 @[creator] — this is exactly why we made the Stroller Saver.'' Always tag creator.', NULL, '2026-05-15'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.099Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590725057');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '04 · Repurpose Content' LIMIT 1), 'Post to Instagram Reels + YouTube Shorts', 'IG: adapted caption, slightly more polished, tag creator. YT: Title ''Real parent reviews the Stroller Saver 🍼'', add to Customer Stories playlist, include product + affiliate link in description.', NULL, '2026-05-15'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.058Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214023281329869');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '04 · Repurpose Content' LIMIT 1), 'Update tracker with all platform repurpose status', 'Mark: Repurposed TikTok ✓, Repurposed IG ✓, Repurposed YT ✓. Add Google Drive link to tracker row. Do NOT repost same video to same platform twice.', NULL, '2026-05-15'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.107Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355168632');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '05 · Spark Ads' LIMIT 1), 'Identify Spark Ad candidates from posted creator content', 'Criteria: 1K+ views in 48 hours, 5%+ engagement, positive comment sentiment, product clearly shown. Flag immediately — speed matters for Spark performance.', NULL, '2026-05-20'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.136Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214023281333340');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '05 · Spark Ads' LIMIT 1), 'Request and confirm Spark Ad authorization from creator', 'In TikTok Ads Manager: Assets → Creative → Spark Ads → Apply for Authorization. Creator taps Authorize in their app. Note expiry date (30 or 90 days). Log in tracker.', NULL, '2026-05-20'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.096Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214028818744682');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '05 · Spark Ads' LIMIT 1), 'Set up Spark Ad campaign ($20–50/day, 7-day test)', 'Objective: Product Sales or Video Views. Audience: Broad OR Parenting/Baby interests. Placement: TikTok only. Confirm pixel is firing. DO NOT touch for first 3 days — TikTok needs learning time.', NULL, '2026-05-20'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.088Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355183683');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '05 · Spark Ads' LIMIT 1), 'Day 7 campaign review: kill or scale', 'Kill if: spent $50 with no sales. Scale if: ROAS ≥ 1.5x (target 2x+). Scale by increasing budget 20–25% every 2–3 days — never double. Duplicate winning ad set before scaling.', NULL, '2026-05-27'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:11.082Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214023281315495');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '05 · Spark Ads' LIMIT 1), 'Monitor creative fatigue + rotate new creator videos', 'Watch CTR daily. If CTR drops 30%+ from peak, introduce new creator video. Never run fewer than 2 active creatives per campaign. Budget ceiling: $200/day per winning creative.', NULL, '2026-05-31'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.853Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214024355176011');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '06 · Retainer' LIMIT 1), 'Identify retainer candidates (2+ qualifying criteria)', 'Criteria: posted without being asked twice OR one video hit 10K+ views OR Spark Ad ROAS 1.5x+ OR audience is clearly new parents with stroller-age kids. Any two = reach out.', NULL, '2026-05-31'::date, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.858Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590737987');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '06 · Retainer' LIMIT 1), 'Send retainer offer DM (personalized with specific result)', 'Mention their specific result (e.g. ''40K views'', ''sold out for a weekend''). Offer: 2–4 videos/month, flat fee + 15% affiliate, 30-day rolling agreement, brief provided monthly. Suggest 10-min call.', NULL, '2026-05-31'::date, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.866Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590724591');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '06 · Retainer' LIMIT 1), 'Send monthly content brief on the 1st', 'Brief includes: product focus, 3 hook options, 3 key talking points, 1–2 things NOT to say, preferred CTA, due dates. Keep to one page. Goes out every 1st of the month.', NULL, '2026-06-01'::date, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.881Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590738121');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '06 · Retainer' LIMIT 1), 'Review and approve retainer creator videos (24hr turnaround)', 'Provide feedback within 24 hours. Be specific and kind. Never ask for a complete redo — iterate on what they made. Agree upfront whether they send for review or post and tag.', NULL, '2026-06-28'::date, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.872Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214028818726420');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214028818737324'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214028818737324') AND name = '06 · Retainer' LIMIT 1), 'Process retainer payments on last day of month', 'Pay on time, every time. Venmo, PayPal, or direct transfer — whatever creator prefers. Late payments kill creator relationships fast. Log payment date + amount in tracker.', NULL, '2026-06-30'::date, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:27:10.884Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214028818737324/task/1214026590738052');

-- New Website Launch List (43 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('New Website Launch List', 'magenta', '1218562542145163');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1218562542145163'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '0 · Scope & Setup', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '1 · Build (Pre-Launch)', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '2 · QA Gate — must pass before launch', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '3 · Launch Day', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '4 · Post-Launch (first 30 days)', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '5 · Merchant Center & Sales Channels', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), '6 · Recurring & Process Improvement', 7);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'SOP Walkthrough', 'Before any build work starts, walk whoever is running this launch through the process end to end:    The seven phases in this project and what "done" means for each
    The QA Gate is a hard gate — nothing goes public until every task in it is checked
    The long-form reference: Claude project doc "Store Launch & GMC Setup Checklist"
    Who owns which phase, and who does the second-person claims read
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-17T21:34:35.197Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218562522499745');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Fill in the launch brief and canonical identity block', 'Everything downstream copies from this block, character for character. Fill it in once, here.    Store/brand name as it will appear to customers
    Legal entity and the ownership line ("Owned and operated by X, LLC")
    Street address, city, state, ZIP
    Phone
    Support email on the store''s own domain
    Primary domain (https, www or non-www decided)
    Category and what the store actually sells
If two sources ever disagree later, this task is the tiebreaker.', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.160Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754380885517');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Connect the toolchain', '    Matrixify (check the plan — the Demo plan caps at 10 rows per job and will silently truncate)
    SumTracker for inventory/bundles, if the store uses them
    Klaviyo or the email platform
    GA4 + Google Search Console
    Ahrefs project for the new domain
    Claude connectors pointed at the right store
', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.140Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754327619907');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Stand up the Shopify store, dev theme and GitHub repo', '    Store created on the right Shopify account (the one that will own it long term, not a personal login)
    Password protection ON until launch day
    Theme repo created and connected to the live theme; branch strategy agreed
    Build on a dev/unpublished theme or a dev store first
    Confirm who has admin vs staff access
', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.161Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754380792702');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Decide catalog scope and source', '    Which SKUs launch on day one, and which wait
    If products are cloned from a sister store: what gets re-vendored, what gets archived, what never comes over
    Tag convention for the new store, and which migration tags must be stripped
    New products default to draft + hold-from-gmc until the feed is clean
    Companion products (engraving, signature, gift cards) identified so they can be excluded from feeds and sitemaps
', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.188Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754524378571');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Confirm category compliance constraints before anything is built', 'For alcohol stores this is the gate on everything else.    Which states can we legally ship to direct-to-consumer? Get the approved list in writing
    Licensing in place for the shipping origin; tied-house constraints checked
    Age requirements: 21+ purchase, adult signature at delivery
    Carrier restrictions: no P.O. boxes, APO/FPO
    Anything the category forbids claiming
The state list drives the shipping zone, the policies and the Merchant Center shipping settings. Don''t write policy copy until it exists.', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.161Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754342000182');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '0 · Scope & Setup' LIMIT 1), 'Create the store mailbox and confirm it receives mail', 'Support email must be on the store''s own domain, not a sister brand''s. Create the mailbox or alias, send a test in and out, and confirm someone owns the inbox.

This blocks the policies, the contact page, the footer and the Merchant Center setup, so do it first.', NULL, NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.420Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754328664589');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Structured data, meta and SEO basics', '    Product + Offer JSON-LD with brand = the manufacturer; BreadcrumbList; CollectionPage; a sitewide Organization/OnlineStore block carrying the canonical identity
    No aggregateRating or review markup unless real reviews exist
    Every page outputs a meta description; homepage title and description set in both the theme and Online Store, Preferences
    Collection SEO titles and descriptions written
    Canonical URLs correct; no staging domain indexed
', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.318Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754524321571');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Theme build and repo hygiene', 'Shopify''s GitHub sync silently skips files that fail validation. Valid files in the same commit deploy; invalid ones are dropped with no error anywhere in the admin. This has cost us a week before.    After every merge, confirm the file''s updated timestamp actually moved on the live theme
    If a file didn''t land, upsert it to an unpublished duplicate theme to get the real validation error
    Known rejection causes: a closing brace inside a {{ }} string (build it with assign instead), url-type schema settings with external URL defaults, any setting with an empty string default, malformed schema JSON
    Don''t edit JSON templates in the theme editor while a sync is in flight
', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.152Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754523910910');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Write and publish all six policies', 'Refund/return, Shipping, Terms of service, Contact information, Privacy, and Cancellation if there are subscriptions.    Zero template placeholders. Search for INSERT, LINK, lorem, and any other brand''s LLC name
    Category clauses present: age requirement, signature at delivery, eligible states, no P.O. boxes or APO, title transfer, governing law
    Every fact must be one we actually honor: hours, reply time, damage window, processing days, ship days, refund timing
    Privacy can stay on Shopify''s automated policy
    Confirm each policy URL returns 200 on the live domain
Note: the Shopify MCP connector can''t write policies (no write_legal_policies scope) — these go in through the admin.', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.155Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754487572381');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Load the catalog and clean the fields Google reads', '    vendor = the real manufacturer/brewery/distillery on every product. Never the holding company, never another brand, never the store name — except the store''s own proprietary products
    Product type and category set
    Barcodes/GTINs forced to text format so leading zeros survive the export
    Real product photography, no placeholders, no text overlays
    Per-product SEO title and description on at least the top sellers
    Migration tags from the source store stripped
', NULL, NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.182Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754488029694');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Navigation, collections and internal links', '    Main menu and footer menu built
    Every collection linked in the nav is published to the Online Store — an unpublished collection 404s from your own menu, which is exactly what a reviewer clicks
    About and Contact in the menus
    Policy links in the footer
    Click every link once the theme is live
', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.318Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754524823587');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Claims audit — copy and schema defaults', 'Every claim must be literally true and checkable. This is the single biggest Merchant Center misrepresentation risk.

Search the theme, product descriptions, collection bodies and section schema defaults for:    Shipping-method claims we don''t do: cold, cold chain, shipped cold, insulated, gel packs, temperature controlled
    Pricing claims that don''t match checkout: free shipping over X, one flat rate, prices include shipping
    Freshness or quality claims we can''t prove
    Coverage claims: ships nationwide when we ship to a subset of states
    Counts that drift: four breweries when six are listed
    Reviews, ratings, testimonials, as-seen-in — only from a real review app with real customers. Never a placeholder review block
Clean the schema defaults, not just the visible copy. If the claim survives as a section setting default, the next person who opens the theme editor puts it straight back.', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.335Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754380921268');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Analytics, consent and legal banners', '    GA4 installed and firing; ecommerce events verified
    Google Search Console property created and verified
    Cookie/consent banner and privacy choices page live if required
    Age gate if the category requires one
', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.299Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754524701019');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Email platform, flows and transactional sender', '    Sender domain authenticated (SPF/DKIM) and the sender address verified
    Shopify transactional notifications branded and pointing at the right support email
    Core flows built: welcome, abandoned checkout, post-purchase, back in stock if relevant
    Test each flow end to end with a real address before launch
', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.310Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754328312527');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Put the business identity everywhere', 'Copy the block from the Scope task exactly.    Settings, General: store name, contact email, phone, billing address
    Settings, General, Business details: legal entity matching the policies (this touches payouts and tax, so do it deliberately)
    Settings, Notifications: sender email set and verified, domain authentication green
    Settings, Locations: only real addresses, local pickup off unless genuinely offered
    Footer: address, phone, email, legal line, policy links
    No other brand''s name, email or entity anywhere. Grep the theme and the catalog for the sister brands
', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.197Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754380437873');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Shipping rates and zones must match the policy', '    Zone covers only the approved states from the Scope phase — remove territories and APO/FPO if the policy says no APO
    Rates at checkout match what the Shipping policy says, including any threshold
    If there is no free-shipping threshold, make sure nothing on the site claims one
    Handling time and ship days match the policy
    Displayed price equals price paid: no page implies shipping is included when it''s added at checkout
', NULL, NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:22.301Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754341972851');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Launch on Shopoify Dev site first ', 'Build on a Shopify dev store or an unpublished theme before touching anything customer-facing.    Dev store or unpublished duplicate theme for all build work
    Live theme only receives changes through the connected repo, after they''ve been seen working
    Remember the sync trap: Shopify silently skips theme files that fail validation, so confirm each file''s timestamp actually moved after a merge
    Keep password protection on the real store until launch day
', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-17T21:34:49.942Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218562522499747');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Inventory and oversell check', '    Is "continue selling when out of stock" intentional, product by product? A catalog mostly sitting at negative inventory reads as a fake storefront
    Inventory counts reconcile with the source of truth (Shopify vs SumTracker drift is normal — cross-reference)
    Archived products aren''t published to any channel
', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:52.019Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754525252594');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Click every link and sweep for 404s', '    Every main menu, footer menu and policy link
    Every collection linked anywhere resolves and is published
    Contact form submits and the message arrives in the store mailbox
    Search returns results
    Crawl the site (Ahrefs Site Audit or Screaming Frog) and check for 404s, redirect chains, missing titles and missing meta descriptions
', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.979Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754524604311');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Place real test orders end to end', '    One order below any advertised threshold and one above; confirm the customer is charged what the page says
    Taxes calculate correctly for the origin state
    Order confirmation email arrives, branded, from the right sender address
    Signature/age notices appear where the policy says they will
    Try an address in a state we do NOT ship to and confirm it''s blocked
    Refund the test orders
', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.987Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647244380');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Run the automated live-site sweep', 'Replace STORE.com and SAMPLE, then run from a terminal. Every line has an expected result.
curl -s https://STORE.com | grep -ci "liquid error"                  # 0
curl -s https://STORE.com | grep -ci "placeholder|sample copy"       # 0
curl -s https://STORE.com | grep -c ''name="description"''             # 1
curl -s https://STORE.com | grep -c ''LEGAL ENTITY, LLC''              # at least 1
curl -s https://STORE.com | grep -ci "OTHERBRAND"                    # 0
curl -s https://STORE.com/products/SAMPLE | grep -c ''"@type": "Product"''   # 1
for p in shipping-policy refund-policy terms-of-service privacy-policy contact-information subscription-policy; do curl -s -o /dev/null -w "%{http_code} $p" https://STORE.com/policies/$p; done   # all 200
curl -s -o /dev/null -w "%{http_code}" https://STORE.com/pages/about-us    # 200

Add a grep for whatever claim words the category bans (for alcohol: cold, nationwide, free shipping).', NULL, NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.990Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647467946');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Mobile, cross-browser and speed pass', '    Home, collection, product, cart and checkout on a real phone
    Safari and Chrome at minimum
    Core Web Vitals sane (LCP, CLS) on the homepage and a product page
    Images sized and lazy-loaded below the fold
', NULL, NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.987Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754525018109');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Second-person read of every claim and policy', 'Someone who didn''t write the copy reads the homepage, a product page, the About page and all six policies, and asks one question of every sentence: can we prove this?

Anything that fails goes back to the claims audit task in Build. This is the last gate before launch.', NULL, NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:52.228Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754381331873');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Rich Results Test on a product and a collection', 'Paste a live product URL and a live collection URL into Google''s Rich Results Test.    Product and Offer detected, brand = the manufacturer
    No errors on BreadcrumbList or CollectionPage
    No aggregateRating unless real reviews exist
', NULL, NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:52.504Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754381340269');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Cross-brand contamination check', 'This one has bitten us repeatedly after catalog migrations. Search the whole catalog for:    Another brand''s name in product titles, descriptions, SEO titles or handles
    Wrong vendor values
    Leftover source tags from the migration
    Another store''s offer IDs in the feed
    Another brand''s email or entity in the theme or policies
Run it again after any bulk operation, not just at launch.', NULL, NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:53.059Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754381348885');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '3 · Launch Day' LIMIT 1), 'Announce the launch', 'Only after the site is public and QA passed.    Email announcement to the list
    Social posts
    Any partner or brewery/vendor notifications
    Internal note to the team that the store is live and who owns support
', NULL, NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.914Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754328613083');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '3 · Launch Day' LIMIT 1), 'Submit sitemap and verify Search Console', '    GSC property verified for the live domain
    sitemap.xml submitted
    robots.txt allows crawling of what should be indexed and blocks what shouldn''t
    Request indexing on the homepage and a few key collections
', NULL, NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.957Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647498235');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '3 · Launch Day' LIMIT 1), 'Remove password and make the store public', 'Only after every QA Gate task is checked.    Turn off password protection
    Confirm the store loads for a logged-out visitor on a different network
', NULL, NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.966Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647467817');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '3 · Launch Day' LIMIT 1), 'Watch the first 24 hours', '    First real order flows end to end: payment captured, confirmation sent, fulfillment created
    Check for checkout errors and theme JS errors
    Watch the store mailbox for customer confusion — it''s the fastest signal that copy is unclear
    Confirm analytics is recording sessions and purchases
', NULL, NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:51.934Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647467752');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '3 · Launch Day' LIMIT 1), 'Domain, DNS and redirects', '    Primary domain set; https enforced
    www / non-www redirect consistent with the canonical choice
    Any legacy URLs redirected (301), no chains
    Email DNS still intact after any DNS change (SPF/DKIM/MX)
', NULL, NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:54:52.266Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647498363');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 1 — crawl and indexation check', '    GSC: pages discovered, indexed, and any coverage errors
    Ahrefs Site Audit crawl: broken links, missing meta, duplicate titles, orphan pages
    Confirm collections and products are being indexed, not just the homepage
', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.061Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754381381312');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Day 2 — first-order review', '    Pull the first orders and walk one end to end: payment, tax, shipping charged, fulfillment, tracking email
    Any customer emails that signal confusing copy or a broken step
    Fix anything found, then re-run the affected QA task
', NULL, NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.071Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754809527283');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 4 — launch retro and update the template', 'The only task that makes the next launch cheaper.    What broke, what took longer than expected, what we missed until after launch
    Add or rewrite tasks in this project so the next duplicate is better
    Fold the same lessons into the Claude project doc "Store Launch & GMC Setup Checklist"
    Note any new platform gotcha (like the GitHub sync silently dropping invalid files) where the next person will actually see it
', NULL, NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.041Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754809598621');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 1 — email flows and abandoned checkout firing', '    Welcome, abandoned checkout and post-purchase flows have real sends and opens
    Deliverability: not landing in spam; sender domain still authenticated
    Unsubscribe and preference links work
', NULL, NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.083Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754809483852');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 2 — SEO pass on the pages that matter', '    Brand long-tail queries ("where to buy X") are the volume play — near-zero difficulty and they scale across hundreds of product pages
    Write custom SEO descriptions for the top sellers
    Internal links from collections to the products worth ranking
    Head terms like "buy X online" are low volume with strong incumbents — don''t over-invest
', NULL, NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:19.944Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754677965656');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '6 · Recurring & Process Improvement' LIMIT 1), 'Monthly feed and diagnostics review', '    Merchant Center diagnostics: disapprovals, warnings, price/availability mismatches
    GSC coverage and any manual actions
    Ahrefs: new 404s, lost pages, ranking movement on the brand long-tail
', NULL, NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:17.947Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754380885535');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '6 · Recurring & Process Improvement' LIMIT 1), 'Keep this project as the master template', '    This project stays unassigned and undated. Duplicate it per store launch
    Every retro updates the master, not just the copy
    If a step needed a judgment call, write the rule down here so the next person doesn''t have to make it again
', NULL, NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:17.986Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647852460');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '6 · Recurring & Process Improvement' LIMIT 1), 'Monthly compliance sweep', 'Recurring, all live stores.    Re-run the claims audit on anything edited in the last month
    Policy facts still true: hours, ship days, thresholds, claim windows
    Menu links and published status of every collection in the nav
    Cross-brand contamination check after any bulk operation
', NULL, NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.332Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754677954545');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '5 · Merchant Center & Sales Channels' LIMIT 1), 'Paid ads — only after the account is approved and stable', '    Free listings first; link Google Ads only once approved
    For alcohol: personalized advertising (Customer Match, remarketing, lookalikes) silently fails — don''t build plans around it
    Manual CPC to start; set the margin floor before bidding
', NULL, NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.035Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754525018124');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '5 · Merchant Center & Sales Channels' LIMIT 1), 'Merchant Center feed QA after the first sync', 'Run this a day or two after the feed first syncs.    Disapprovals and their reasons
    Missing GTIN / identifier_exists handling
    Price and availability mismatches against the site
    Wrong brand values
    Items that should have been excluded but came through
"Limited" visibility on alcohol items is normal for restricted categories, not an error to chase.', NULL, NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.041Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647932015');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '5 · Merchant Center & Sales Channels' LIMIT 1), 'Decide the other sales channels', '    Shop app, Meta, TikTok, marketplaces — which ones, and what each one is allowed to list
    Category restrictions checked per channel before publishing anything
    Same exclusion list as the Google feed
', NULL, NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.065Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647577706');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1218562542145163'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1218562542145163') AND name = '5 · Merchant Center & Sales Channels' LIMIT 1), 'Google & YouTube channel — publishing and exclusions', 'Channel app settings are UI-only.    Publish only the products meant to be in the feed
    Exclude companion products, subscriptions, configurable/BYO products, drafts and archived items
    Confirm nothing from a sister store is published here
', NULL, NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-22T17:55:18.042Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1218562542145163/task/1218754647861840');

-- MyMusicFolders — BigCommerce → Shopify Launch (54 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('MyMusicFolders — BigCommerce → Shopify Launch', 'blue', '1219481787704836');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1219481787704836'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1219481787704836'), id FROM people WHERE email = 'jon@mymusicfolders.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '0 · Scope & Setup', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '1 · Build (Pre-Launch)', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '2 · QA Gate — must pass before launch', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '3 · Launch Day', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '4 · Post-Launch (first 30 days)', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '5 · Google & Sales Channels', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), '6 · Recurring', 7);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '0 · Scope & Setup' LIMIT 1), 'Transfer store ownership to MyMusicFolders and choose a Shopify plan', 'The dev store needs to move onto MyMusicFolders'' own Shopify account and a paid plan before launch (dev stores can''t take real orders).
- Pick a plan (Basic vs Shopify, depending on staff accounts and reporting needs)
- Accept the ownership transfer
- Decide who gets admin vs staff access', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:07.531Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787850998');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '0 · Scope & Setup' LIMIT 1), 'Kickoff walkthrough of this launch plan', 'Walk Jon through the phases, what "done" means for each, which tasks are his, and how the QA Gate and sign-off work before anything goes live.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:07.426Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681727598');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '0 · Scope & Setup' LIMIT 1), 'Connect the toolchain', '- GA4 + Google Search Console for mymusicfolders.com
- Email platform (confirm what''s used today)
- Review app (per the decision above)
- Ahrefs project for crawl audits
- Claude connectors pointed at the right store (re-confirm store before every bulk write)', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:07.413Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787594609');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '0 · Scope & Setup' LIMIT 1), 'Map BigCommerce features to Shopify equivalents', 'Each needs a decision (with Jon) before build is complete:
- Shopper Approved reviews (4.8 / 6,169 reviews): keep Shopper Approved on Shopify or move to another review app - ShopperApproved will do this
- Music educators pricing (wholesale tier): Shopify B2B, a wholesale app, or discount codes
- Gift certificates: Shopify gift cards; outstanding balances need migrating
- USD / CAD currency switcher: Shopify Markets
- Customer accounts and order history: migrate or start fresh
- Embossing configurator: rebuilt in the theme (see Build)', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:07.454Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127824461');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '0 · Scope & Setup' LIMIT 1), 'Confirm the business identity block', 'Everything downstream (footer, policies, checkout, emails, Google) copies from this, character for character. Please confirm or correct:
- Store name as customers see it
- Legal entity name
- Street address, city, state, ZIP (Missoula, MT)
- Customer service phone
- Support email on the mymusicfolders.com domain
- Primary domain: www or non-www
If two sources ever disagree later, this task is the tiebreaker.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:07.510Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787536865');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Backsync Order data from BrightPearl to Shopify', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T16:48:26.019Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219552652964476');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Wholesale / music educators pricing setup', 'Implement whichever approach is chosen in the feature-mapping task. Test with a real educator account.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.217Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681572699');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Reviews migration', 'Carry the Shopper Approved reviews and rating over to the new site. Only show review counts and stars that come from the real review app — no placeholder review blocks.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.212Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681739833');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Decide on the republished Aeon article', '"Why the community that sings together stays together" (Eiluned Pearce) was republished from Aeon, not original content. Republishing on the new site needs Aeon''s permission/attribution terms checked. Options: confirm permission and migrate with attribution, link out to Aeon instead, or drop it.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.152Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787820313');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Embossing configurator — decisions needed', 'The configurator is built in the theme and the 15 embossable folders are tagged. To finish it we need answers on:
1. Cart display: Shopify shows the folder and its embossing charges as separate lines (same total). OK, or do you want a single combined line (needs an options app)?
2. Numbering: which font and size options should customers see?
3. Name charge: per folder or per name?
4. Repeated-text $10 setup: once per order or once per distinct text?
5. Should embossed orders be tagged for the two-week lead time?
6. Does the "See available fonts" page list more fonts than the four in the dropdown?', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.078Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470519179758');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Write and publish policies', 'Refund/return, Shipping, Terms of service, Contact information, Privacy.
- Zero template placeholders
- Every fact is one MyMusicFolders actually honours: processing time, embossing lead time, return window, damage claims, shipping to Canada
- Jon reviews before publishing
- Each policy URL returns 200 on the live domain', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.193Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787846916');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Email notifications and marketing flows', '- Sender domain authenticated (SPF/DKIM) and sender address verified
- Order confirmation, shipping and embossing-related notifications branded and accurate
- Core flows: welcome, abandoned checkout, post-purchase
- Test each with a real address', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.062Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127883543');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Embossing configurator — finish and test', 'Theme blocks built (branch embossing-2026-09-09 + fix 61aed4d), 15 folders tagged, repeated-text setup product reactivated. Remaining: apply Jon''s decisions, then test every option group, placement collisions, logo upload and the add-on charges landing in cart.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.060Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127854529');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Gift cards and multi-currency', '- Shopify gift cards set up; outstanding BigCommerce gift certificate balances migrated
- Shopify Markets for USD + CAD; check prices round sensibly in CAD', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.165Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432420856');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Analytics and consent', '- GA4 installed, ecommerce events verified
- Search Console property verified
- Cookie/consent banner if required for Canadian/EU visitors', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.034Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432339315');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Load real inventory levels', 'Inventory is currently untracked so nothing shows sold out on the mockup. Before launch: get current stock from Jon/BigCommerce, decide per product whether to track inventory and whether to allow backorders.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.106Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681729117');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Review two migrated blog posts with dated content', '- Force of Nature post carries expired April 2020 promo codes
- VocalZone post contains Amazon affiliate links
Keep as archive, edit, or unpublish?', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.099Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681727618');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Claims audit — copy and theme defaults', 'Every claim must be literally true:
- Shipping speed, free-shipping thresholds, Canada coverage
- Embossing turnaround
- Review counts/ratings only from the live review app
- Clean section setting defaults too, not just visible copy', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.029Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681739662');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Migrate content pages', 'About Us, Customer Care, Shipping, Returns Policy, Wear & Care, Recommended Resources & Reading, Music Educators Pricing. Clean up as we go (brief is a cleaned-up rebuild, not a 1:1 clone).', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.055Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681179091');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Footer menu and internal links', '- Footer with policies, About, Contact, Customer Care
- Every collection linked in the nav is published (an unpublished collection 404s from the menu)
- Click every link once the theme is final', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.167Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681267085');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Customer accounts migration', 'Based on the feature-mapping decision: import customers (and order history if wanted), with marketing consent status preserved. Customers will need to set a new password — plan a short email explaining it.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.211Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432408114');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Payments, taxes and checkout settings', '- Shopify Payments (and PayPal if used today) connected to MyMusicFolders'' accounts
- Sales tax collection set for every state/province where MyMusicFolders has nexus (confirm with their accountant)
- Checkout branding and fields', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.183Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127843551');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Structured data, meta and SEO basics', '- Product + Offer JSON-LD with the correct brand per product (MyMusicFolders, BASIK BLACK, etc.)
- Meta descriptions on every page; homepage title/description set
- Collection SEO titles and descriptions
- Canonicals correct; myshopify.com not indexed', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.178Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127883703');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Complete URL redirect coverage', '70 redirects already loaded (categories, products, blog). Before launch: crawl the live BigCommerce site and pull top landing pages from analytics/Search Console, then make sure every old URL — including hidden products, pages and /product-category/ paths — 301s to the right Shopify page. Note: slugs don''t always match titles; read the real URLs from the site.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.010Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127256509');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Put the business identity everywhere', 'Copy exactly from the identity block in Scope.
- Settings > General: store name, contact email, phone, address
- Notifications: sender email verified, domain authenticated
- Footer: address, phone, email, policy links
- No other store''s name, email or products anywhere', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.227Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432350603');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Shipping rates and zones must match the policy', '- Zones: US and Canada (plus anything else currently offered)
- Rates at checkout match what the Shipping policy says, including any free-shipping threshold
- Embossing lead time reflected in processing time / messaging', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:09.726Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432464243');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), 'Educator Discount Segment', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-22T17:28:53.312Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219789832758885');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '1 · Build (Pre-Launch)' LIMIT 1), '10% Auto Discount for Educators', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-22T17:29:04.839Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219789832758887');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'QA Site for errors ', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T16:40:42.199Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219552652964470');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Rich Results Test on a product and a collection', 'Product and Offer detected with correct brand; no errors; no rating markup unless real reviews are live.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.344Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470431943362');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Test old BigCommerce URLs redirect correctly', 'Run the full list of old URLs (top landing pages first) against the new site once DNS points at Shopify on a test basis — every one should land on a real page with a single 301.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.366Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127755632');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Click every link and sweep for 404s', '- Main menu, footer, policy links, every collection
- Contact form submits and arrives in the support inbox
- Search returns results
- Full crawl: 404s, redirect chains, missing titles/meta', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.340Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432156817');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Mobile, cross-browser and speed pass', 'Home, collection, product (with embossing configurator), cart and checkout on a real phone; Safari and Chrome; Core Web Vitals sane.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.337Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127840312');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Catalog contamination check', 'Confirm the store contains only MyMusicFolders products — no stray products, vendors, tags or emails from any other store. Re-run after any bulk operation.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.349Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787574546');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Place real test orders end to end', '- Plain folder order
- Folder with embossing (name + numbering + logo upload)
- Educator/wholesale order
- CAD order shipping to Canada
- Gift card purchase and redemption
Confirm totals, tax, shipping, confirmation emails, then refund.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.354Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432454734');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Inventory check', 'Stock levels reconcile with Jon''s counts; backorder settings intentional per product; drafts not published anywhere.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.337Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127690674');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Jon reads every page and policy', 'Read the homepage, a few product pages, About, Customer Care and all policies, asking of every sentence: is this true and how we actually do it? Comment on anything that''s off.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:11.395Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127883563');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '2 · QA Gate — must pass before launch' LIMIT 1), 'Jon''s launch sign-off', 'Mark complete once every QA Gate task above is checked and you''re happy with the site. Launch day starts after this.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:21.663Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470431559874');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'trasnfer to Jon on Grow plan', '', NULL, NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T16:58:41.323Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219552652964479');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'Watch the first 24 hours', 'First real order end to end, checkout/JS errors, support inbox for confused customers, analytics recording.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:12.569Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127893798');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'Submit sitemap and verify Search Console', 'Submit sitemap.xml, check robots.txt, request indexing on homepage and key collections.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:12.533Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432469416');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'Remove password and make the store public', 'Only after Jon''s sign-off. Confirm the store loads for a logged-out visitor on a different network.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:12.520Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681162368');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'Domain and DNS cutover from BigCommerce', '- Point mymusicfolders.com at Shopify; set primary domain and www/non-www redirect
- HTTPS active
- CRITICAL: keep MX, SPF and DKIM records intact so company email keeps working
- Do NOT cancel BigCommerce yet', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:12.564Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432469480');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '3 · Launch Day' LIMIT 1), 'Announce the new site', 'Email to customers (include the reset-password note if accounts were migrated), social posts, any educator/partner contacts.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:12.606Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787793054');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Day 30 — final BigCommerce export and cancel', 'Once the site has been stable for 30 days: take a final export of orders/customers/products from BigCommerce for records, then cancel the subscription.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.915Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432268235');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 1 — crawl, indexation and 404 monitoring', 'Search Console coverage and 404s from old BigCommerce URLs; add any missing redirects.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.857Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432156838');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 4 — launch retro', 'What broke, what took longer, what we missed. Fold lessons back into the Yecommerce launch template.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.873Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681751369');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 2 — SEO pass on the pages that matter', 'Custom SEO descriptions on top sellers; internal links from collections; compare rankings against pre-launch baseline.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.870Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219489127657164');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Week 1 — email flows firing', 'Welcome, abandoned checkout and post-purchase have real sends; not landing in spam.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.868Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681749761');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '4 · Post-Launch (first 30 days)' LIMIT 1), 'Day 2 — first-order review', 'Walk the first real orders end to end, including any embossing order; fix anything found.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:13.870Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219481787777905');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '6 · Recurring' LIMIT 1), 'Monthly site health review', 'Merchant Center diagnostics, Search Console coverage, new 404s, policy facts still true, nav collections still published.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 51, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:16.562Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470432089755');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '5 · Google & Sales Channels' LIMIT 1), 'Decide other sales channels', 'Shop app, Meta, Amazon, etc. — which ones, and which products each is allowed to list.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 52, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:15.211Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470431943383');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '5 · Google & Sales Channels' LIMIT 1), 'Merchant Center feed QA after first sync', 'Disapprovals, missing GTINs (identifier_exists), price/availability mismatches, correct brand values.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 53, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:15.178Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681267067');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1219481787704836'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1219481787704836') AND name = '5 · Google & Sales Channels' LIMIT 1), 'Google & YouTube channel and Merchant Center', 'After launch is stable: connect Google & YouTube, verify/claim the domain once, match return and shipping policies exactly, exclude embossing add-on products and gift cards from the feed.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 54, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-13T20:57:15.182Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1219481787704836/task/1219470681748094');

-- MyMusicFolders (100 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('MyMusicFolders', 'yellow', '1205963288822664');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'haiderishani96@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'huzaifafreelance28@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'i_vladyka@yahoo.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'jon@mymusicfolders.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205963288822664'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'B2B', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Email', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Video/Social', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'SEO', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Website', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Affiliate', 7);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Paid Ads', 8);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Amazon', 9);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'On Hold / Needs FeedBack', 10);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'Done', 11);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), 'IDEAS', 12);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Bright pearl to Shopify connector info', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T17:29:57.465Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1219552652964485');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Set up existing-customer suppression in Instantly (Brightpearl → Instantly)', 'Context: Jon flagged that Kristin, a Brightpearl customer with an order pending customization, received a cold email. Goal: keep existing customers out of cold campaigns without blocking the Past Customers reactivation campaign.

Key point: The Instantly Blocklist is workspace-wide. Don''t load all customers into it, or the reactivation campaign stops reaching them. Use a customer master list plus dedupe on upload, and reserve the Blocklist for people who should get nothing.

Note: For school districts, block by email rather than domain. A domain block would also suppress non-customer directors in the same district.

See subtasks for the steps.', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-07T23:14:08.150Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1219284077485983');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Review High Level CRO Audit', 'https://docs.google.com/document/d/1V83hG5vr_fWghg_E2icelog5NCDX1gTd/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-25T23:34:57.244Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213811647350788');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Review website audit report', 'https://app.asana.com/0/1203083754187296/  I used Claude to audit our Google analytics data and create this report
I have a feeling we have a conversion rate issue we need to dig into.
Let me know your thoughts 
https://docs.google.com/document/d/1_rAgfDPRQtDG7H3OZuN3xKtNGlA12rLGMmn_S_N5ue0/edit?usp=drivesdk', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-18T01:04:24.136Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210054226074094');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Monthly KPI sheet - MMF', 'Marketing KPI Sheet
https://docs.google.com/spreadsheets/d/1MpkP5iUuIg7s67HitoADkXUGq1CZlKFrOeu62x8az7A/edit?usp=sharing
    Include Amazon 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-11-02'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-08T16:37:55.421Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1219334899841906');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'update copy in Amazon store', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-03T16:48:48.239Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1218156581046411');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'What new product to launch ', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-17T18:35:25.955Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213317802002291');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'Create new product catalogue', 'Create a 5.5" x 8.5" folded/stapled comprehensive catalog, including all products from the website.
A sample of InDesign file for the Choir Robes catalog is attached.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-04-03T20:34:48.198Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1209886760748517');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'To Do' LIMIT 1), 'High-level SEO audit ', 'Seo audit
https://docs.google.com/document/d/1X3f2Xj57kg8bzcDt6r4WV0iHhflq9BZ8/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-19T17:26:39.818Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213737205003660');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Automate some items in Instatnly', '    Auto suppress "take me off your list" 
    Follow up with "I no longer work there" or "I am not the person who handles x"
    Put "I''m not interested at this time" people on a sequence that follows up at a later date 
    Auto follow-up sequence for out-of-office emails 
    Queue up email for someone to check and send for interested people 
', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-15T17:17:50.905Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1219552652964483');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'New emails to load into instantly - MyMusicFolders', '', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-08T23:40:46.236Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1219337499424745');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Take out klaviyp people in instnatly - keep but make them do not send currently ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-13T19:06:35.356Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1217469418061854');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Make sure all Instantly Emails have the same reply-to email + warm-up tag ', 'reply to emails - customerservice@mymusicfolders.us

Warmup tag - instantly-warm-up


https://app.asana.com/app/asana/-/get_asset?asset_id=1217031055132933


', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-30T17:04:14.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1217031055132930');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'High level ICP for Choir Robes', 'https://docs.google.com/document/d/1DBsjpEz2qm7mnRBotVZTa_rk6wzVkjkH5237tK9hHtY/edit?usp=sharing

ICP Example from MyMusic Folders
https://docs.google.com/document/d/1W5JH1iNldlrZEtPkycfpEXO67BTWbihk/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-26T17:06:07.328Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213822979049046');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'List of Past Robes Customers', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-16T17:48:08.269Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1216635119239456');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Pull new contact listed for My Choir Robes ICP', 'Basic ICP


Church segment (qualify credit standing before treating like a school)

    Director of Music Ministries
    Minister of Music
    Music Ministry Coordinator
    Worship Director (secondary priority — less consistently the folder/robe buyer)
', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-16T17:44:00.132Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1216634839398931');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Plan to revamp Instantly ', 'https://docs.google.com/document/d/1cjMbMdCOkaXrg7bijtc8_vAJLFg4u2pWzoKsw4UGN1w/edit?usp=sharing', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-25T20:22:07.940Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1216020866062504');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'How can we find more people like our best ICPs', '', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-22T20:38:20.407Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1215938928251323');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Analyzie and figure out how we grow Instantly', 'Doc on what working, whats not, and how to scale 

https://docs.google.com/document/d/1cjMbMdCOkaXrg7bijtc8_vAJLFg4u2pWzoKsw4UGN1w/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-11T17:07:51.334Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1215630649987752');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'CRM', 'https://docs.google.com/spreadsheets/d/1vJevKtVMqLtN2MO6yCR7OiX59VxjO01eaUW-6kYZmGE/edit?usp=sharing

https://docs.google.com/document/d/1eDoOhuurscdDY2o5TxjREsardo3ZLwwn/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true


Need to build a basic CRM to follow up on past b2b customers
    What the criteria for these people 
        More than $200 of product at any given time 
        and/or
        Repeat customers = 3 or more times 
    List from Bright Pearl 
    List from Klaviyo
    Put together a spreadsheet
        Person
        role/customer profile 
            School/religious org/community org
            What is their role
        contact info (email/phone) 
        Last purchase date
        what they purchased 
        dollar amount
        How many times have they purchased
        Approximately when we need to follow up 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-19T17:10:27.490Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213737205003652');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'B2B Outreach on Instantly ', 'https://docs.google.com/document/d/1W5JH1iNldlrZEtPkycfpEXO67BTWbihk/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true


Outreach funnel process
    Seamless.ai for leads
    send an initial email with products, services and discounts 
    Funnel leads into a Typeform
    Then send a follow-up email thanking them 

Freebies / Samples
    send out folders / swatches 
    qualifys lead as higher quality 

Past Customer Lists attached to task 

Outreach Template
https://docs.google.com/document/d/1tYBZUt4ajjhYabF7ON9VS2as2HIYvlTyw2tHQvQTtQg/edit?usp=sharing', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-23T17:01:07.172Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1211723878401393');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Process to reachout to B2B Customers', 'https://docs.google.com/document/d/1sX0xbKquATCHJ7DzsTPWgOpORSI-Hft_LBD5zCmm85g/edit?usp=sharing

https://docs.google.com/document/d/1BMK_L_LCTkozvtca1spqLSKsc7_A5L48/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

    what cohorts do we reach out to directly and who do we automate - top 500 LTV
    How often do we reach out - Spring and Fall
    reaching out to past quotes 
    messaging 
    how to track it all 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-02T17:28:30.615Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213911871413905');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'B2B' LIMIT 1), 'Tracking b2b attibution better ', 'https://docs.google.com/document/d/1lS_nAESFJUrlkcBm8bj9iRKXLikHq-ZK/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-02T17:30:33.216Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213911871413910');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Email' LIMIT 1), 'Monthly Emails - MMF', 'https://docs.google.com/spreadsheets/d/1aaSR3GprQL6pTgSdq3qWnZ1pY-hZX1QqTpy0J2O0Vcs/edit?gid=0#gid=0https://docs.google.com/spreadsheets/d/1aaSR3GprQL6pTgSdq3qWnZ1pY-hZX1QqTpy0J2O0Vcs/edit?gid=0#gid=0
https://docs.google.com/spreadsheets/d/1aaSR3GprQL6pTgSdq3qWnZ1pY-hZX1QqTpy0J2O0Vcs/edit?gid=0#gid=0

GOAL
    Two teasers
    1 Deal
    1 follow-up (Or 2 if we miss the teaser)
        Check in with Jon if we stock out
', NULL, NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-09-26T19:49:53.741Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208394799726025');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Email' LIMIT 1), 'Copy for inital B2B email series ', '    Initial "You are going to hear from us more - let us know if you are interested."
    monthly touch base emails 

new b2b email lis to use 
https://www.klaviyo.com/list/UCA4sg', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-23T17:14:57.142Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1214236627560417');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Email' LIMIT 1), 'Typeform + Klaviyo', '', NULL, NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-31T17:26:06.218Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210930466608197');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Email' LIMIT 1), 'Lets get some copy for Choir Robes', 'https://app.asana.com/0/profile/1203083754187059 Lets get some copy for Choir Robes', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), '2026-07-28'::date, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-11T18:01:14.161Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1211332381774952');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Video/Social' LIMIT 1), 'YouTube', 'https://www.youtube.com/@mymusicfolders/videos

Dropbox folder link for storing videos:
https://www.dropbox.com/scl/fo/uuu1iu6r6sbpwzvg8kb6h/AFp_56tKHhgeQgCiHcVX9No?rlkey=btwah1qgeyk31b98be9nofwr0&st=kx5bn952&dl=0

Link for the File Request to upload videos beyond the space limitations:
https://www.dropbox.com/request/saxdburlfk9ffrxxbvb9', NULL, NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-09T16:43:00.688Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213582838847057');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Video/Social' LIMIT 1), 'add FB to Shopper Approved review distribution', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-03T16:37:43.726Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210702732845232');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Video/Social' LIMIT 1), 'YouTube Video notes', '    dont thinkg someone just talking to a camera makes much sense for a product brand
    he talked about products and then is not showing it 
    feels like we could have Daniel edit it to add more cut aways to products durring the video 
    Wuld like to get his thoughts here 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-14T17:01:38.624Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1214813142676275');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'SEO' LIMIT 1), 'SEO Optimization for MMF', 'Based on what I''m seeing right off the bat, here are the keywords that have room for improvement:

brass corner protectors (450) https://www.mymusicfolders.com/product/replacement-brass-corner-protectors-set-of-5/
vinyl envelopes (150) https://www.mymusicfolders.com/product/mmf-press-on-vinyl-envelopes/
custom embossed folders (100) https://www.mymusicfolders.com/product-category/embossing/
folder binders (100) https://www.mymusicfolders.com/product-category/choral-folders/ 
three ring binder folders (60) https://www.mymusicfolders.com/product/three-ring-adapters/

There are a few more, but the search volumes get even more insignificant. I honestly don''t see much here that would justify the cost of an SEO engagement, but for what they''re worth, I do think that the target pages I listed above could be improved with some basic on-page optimizations, a few backlinks, and some content optimization.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-02T19:53:56.718Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1211538449231779');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'SEO' LIMIT 1), 'Backlink Building - MMF', 'https://docs.google.com/spreadsheets/d/1Ee9KVgm5q209SI4xa1XMOqCx6Tbk1hjHoPtrzG4aUno/edit?usp=sharing
The document we use to track and help negotiate backlinks 

Backlink Opps June 2024
https://docs.google.com/spreadsheets/d/1dhBUc99QX16kdC-LiUeub3wg82nZT9ubHX8CzdNVooQ/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1HUXRiK3QJ-CD0aSo-kQs433xyV_SsZi891prQnObS0s/edit?usp=sharing

MyMuisic FOlders affiliate program link
https://shareasale.com/r.cfm?b=40&u=3160323&m=47&urllink=&afftrack=


', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-01T19:04:57.677Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206740751599538');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Website' LIMIT 1), 'Scrolling on Mobile has issues', 'https://app.asana.com/1/1200828512126939/profile/1205824406484530  We seem to have an issue when you are on the prouct page that when you try to scroll anywhere near a photo, even with one finger it just wants to zoom into the image andnot scrool hurting hte UI

is there a way to fix this?', (SELECT id FROM people WHERE email = 'i_vladyka@yahoo.com'), NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-26T17:34:54.512Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213822979049053');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Website' LIMIT 1), 'Product Page CRO Improvements', '', NULL, NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-26T17:35:53.735Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213822979049056');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Website' LIMIT 1), 'UGC ', 'Ways to get UGC
    incetivise video reviews
    incetivise images 
    We should just ask people to send us stuff
    Tell them we will promote them on our YouTube and website

https://app.archive.com/content/all

    A giveaway for the cards would be great
        we could use a giveaway - like a free expansion pack to the winner
        Could send a discount to anyone who doesn''t win but give a discount
    Email flow for band/choir photos and video
        We could link to they website or social
        they would link to us
        we need to get the usage rights for content
', NULL, NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-21T23:19:29.505Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206892216364062');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Website' LIMIT 1), 'Get Reviews setup for MCR', 'https://app.asana.com/0/profile/1206892488704423 one last thing to setup for MyChroiRobes is reviews 

Let me know if you can get those together as well
thanks ', NULL, NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-24T20:19:43.652Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208623113277558');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Affiliate' LIMIT 1), 'MyMusicFolders -  Invite new publishers - AWIN', 'Where to search for opportunities 
AWIN > Publishers > Search - Opportunities Marketplace 
AWIN > Publishers > Search - Partner Directory 


🔑 Keywords to Use in AWIN Publisher Search

Product / Niche keywords
    music folders
    choir folders
    choir robes
    band folders
    music accessories
    choir supplies
    sheet music folders
    music education
Audience / Publisher type keywords
    music teacher
    choir director
    band director
    performing arts
    school music programs
    education blogger
    church music
    arts education
    nonprofit / fundraising
Gift / Retail keywords (for broader publishers)
    personalized gifts
    engraved gifts
    music gifts


✍️ Concise Invitation Blurbs (<500 characters)

General / Lifestyle / Education Affiliates

> Join MyMusicFolders.com on AWIN! We supply premium choir folders, robes & music accessories for schools, churches & professionals. Excellent commissions + trusted by musicians for 30+ years.

Coupon / Deal Sites

> Partner with MyMusicFolders.com on AWIN! Save on premium choir folders, robes & music accessories used by schools & choirs nationwide. Great commissions + loyal repeat customers.

B2B / Institutional Focus

> Join MyMusicFolders.com’s AWIN program! We provide high-quality choir folders & robes for schools, churches & performance groups. High AOV, strong seasonal demand, and great commissions.


How to do this
https://www.loom.com/share/58eb7f99fe8c4bd9a5e8f0e4e684b38e?sid=47612dad-8708-4fc7-8512-66b3fcc96c42', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-08T21:57:22.731Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1211592434098417');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Affiliate' LIMIT 1), 'Soliciting Choir / band Orgs to promote products', '    Putting something up on FB page to promote
        School / Choirs to help promote us
        Sign up as an affiliate and give them a higher commission
        On full price only
        Bump them up to 10% for the commission
            Can I get a custom link to give them the 10%?
        https://www.shareasale.com/shareasale.cfm?merchantID=153916
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-08T20:22:19.716Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208002292685130');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Affiliate' LIMIT 1), 'Create Affilaite Pages on site', 'Link to sign up on Shareasale 
https://www.shareasale.com/shareasale.cfm?merchantID=153916', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-15T18:16:59.640Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208066379431386');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Paid Ads' LIMIT 1), 'Meta Ads', 'https://drive.google.com/file/d/1rFJ6Cpe5b_uu9SS0UPeuGI8ldm3tSAT7/view?usp=sharing

https://docs.google.com/document/d/1rGPwMTpmPf6bwb7FzXITZg_Ii1PJ5bHu/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

https://docs.google.com/document/d/1I863NqkTYtj6HLXzbvTx-DpgBVET6ITi2uB2rqkeSN8/edit?usp=sharing', NULL, NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-12-13T23:06:10.049Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206165874808444');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Paid Ads' LIMIT 1), 'Google / Bing ads', '', NULL, NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-06T21:41:39.479Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206537324931283');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Launch FBA - Working with Austin', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-25T20:38:40.189Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1216021025079941');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Reactive Brazil ', 'https://sellercentral.amazon.com/performance/account/health/reactivate-your-account', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-14T17:21:59.528Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1214813142676281');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Reactive Amazon Canada ', 'https://sellercentral.amazon.com/performance/account/health/reactivate-your-account', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-14T17:19:32.774Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1214813142676278');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Premium Shipping Performance', 'I wonder if Waris can manually disable the Premium Shipping option on our Amazon store so we don’t incur penalties or frustrated customers. I don’t think we can meet the delivery times with our current shipping options, and I believe this results in an inordinate number of returns.', (SELECT id FROM people WHERE email = 'haiderishani96@gmail.com'), NULL, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-24T18:11:32.334Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1212954992618045');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Setup B2B Pricing ', '', NULL, NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-12-04T18:09:13.319Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1212310160559168');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'On-time Delivery Rate is below acceptable - what to do?', 'On-Time Delivery Rate: 75.5%
    Shipments tracked: 102 shipments (October 13 - November 11, 2025)
    On-time deliveries: 77 out of 102 shipments
    Target requirement: 97% or higher
    Status: Good (meeting minimum requirements)
Additional Delivery Metrics:
    Unit On-Time Delivery Rate: 78.7% (37 out of 47 units delivered on time)
    Valid Tracking Rate: 100% (all 102 shipments had valid tracking)
    Late Shipment Rate: 0% (excellent - no late shipments)
Performance Analysis: While your delivery metrics show “Good” status, your on-time delivery rate of 75.5% is below Amazon’s target of 97%. However, your late shipment rate is excellent at 0%, indicating you’re shipping orders on time but may be experiencing carrier delays or transit issues.
Recommendations:
    Consider using faster shipping methods or different carriers
    Review your handling time settings to ensure realistic delivery promises
    Monitor carrier performance and consider switching if needed
Your overall account health rating is 204 (Great status), so this delivery performance isn’t currently impacting your account negatively, but improving it could enhance customer satisfaction.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-30T14:36:21.765Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1212224923278153');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Amazon' LIMIT 1), 'Investigate low "featured offer" ', 'https://app.asana.com/0/profile/1207338603211127 can you investigate and tell us why we are at a 72% featured offer?
I imagine its because we dont have the buy box ', (SELECT id FROM people WHERE email = 'haiderishani96@gmail.com'), NULL, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-05-29T17:06:16.342Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210414336837849');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), '3 Years of #''s ', '    traffic and kpis / marketing channel 
    P&L back 3 years
    figure out what mesurables are important 
    https://docs.google.com/spreadsheets/d/15SkC6ToeqY134ZDMquWW9u8IRapXbMe9MKdfsa-Lk4E/edit?usp=sharing
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-16T17:46:04.657Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1211665066089124');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Competitor analysis ', '    https://musicfolder.com 

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-17T18:38:37.229Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213306309732613');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Proposal for cold outreach ', 'natasha.razmoska@bizzbeesolutions.com

Okay, so to summarize here, our options are 

LinkedIn only for 300-1000 Euro ($350 - $1180 USD)
Part-time person 1290 Euro ($1500 USD)
Full-time person 2580 Euro ( $3000 USD)

Natasha Razmoska
Fri, Feb 6, 9:44 AM (6 days ago)




to James

Hi James,
 
Yes,
·        Automated LinkedIn campaign will be 300EUR (350$) – this is discounted from 1.000EUR.
·        Part-time person 1290 Euro ($1500 USD)
·        Full-time person 2580 Euro ( $3000 USD)
 
On the part-time and full-time person, in order to give you a better pricing, I can offer you 10% off on the prices, if we can move outside of Upwork and work company to company.
 
I hope this makes sense.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 51, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-05T18:31:52.270Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1213117971417293');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Cost to move a site from BigCommerce to Shopify ', 'https://app.asana.com/0/profile/1207773019007614 ', NULL, NULL, 52, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-16T17:07:12.024Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210552603639077');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Training new gal on social media stuff ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 53, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-01-09T22:27:25.784Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1212718361405861');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Walmart Connection', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 54, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-24T17:22:17.983Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210881930049609');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'MyChoirRobes SEO Overhaul', 'https://app.asana.com/0/0/1202577413177013/f

https://docs.google.com/spreadsheets/d/1GVrcS7dxdgcPXqjtsIVnijePifnXskYucpowF6DR_Vo/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1EoIzVC5diJaHjKSIEW3C8NqlAEAD2va9uVXWsUr-vBM/edit?usp=sharing', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 55, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-19T04:48:28.422Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205754019980426');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Get Google Reviews Setup for MCR', 'https://app.asana.com/0/profile/1206892488704423 We also need to get reviews setup for MyChoir Robes - let me know if you can get that done 

thanks 

How to integrate on Website 
https://merchants.google.com/mc/customerreviews/overview?a=102160178', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 56, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-24T20:19:22.323Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208623113277555');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Add educator pricing link to the bulk prices popout box', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 57, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-22T18:25:53.549Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206671789070939');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'We''ll promote your band/choir typeform ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 58, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-10T21:14:19.093Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208522660275146');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Show us your best card hand typeform', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 59, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-10T21:14:07.947Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208522660275112');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'set up edu customers in Big Commerce', 'export .edu customers from Brightpearl and import to Big Commerce

', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 60, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-01-26T18:23:08.039Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1203839139546244');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Page to fetaure Choirs and Bands', '', NULL, NULL, 61, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-28T19:36:43.942Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206943364621869');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'TypeForm for Educatior sign ups ', 'https://www.mymusicfolders.com/music-educators-pricing/', NULL, NULL, 62, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-18T17:16:10.930Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207847819431809');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Optimize top pages on MCR', 'https://docs.google.com/spreadsheets/d/1EoIzVC5diJaHjKSIEW3C8NqlAEAD2va9uVXWsUr-vBM/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 63, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-31T00:23:55.471Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207449385679277');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Create follow up email - we want to see your best card hand', 'https://app.asana.com/0/1206892488704433/list I started a flow to do this 

Our goal is to get User generated content form people who have ordered card deck games 

For sending us UGC they will be entered to win the expansion pack of card for free but all entrants get a discount on the expansion pack

They can simply reply to the email and attach their photo for us with approval to post / use it on our social channels. 

Let me know if you need more info for this
thanks', NULL, NULL, 64, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-18T17:53:25.640Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207105876398929');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flow - We want to promote you Band/Choir', 'Link to Flow 
https://www.klaviyo.com/flow/VeZAbS/edit

Goal of this email: to request choirs and bands send us their info to promote their band and/or choir on our website and social channels.  We basically want a back link on their website and for them to help promote us as well. 

Our Ask: that they link to our website and/or promote us on their social channels.  We would also love video/images to post of them 

What they get: a perment listing on our website and promotion on our social channels.

Let me know if you need more info

I started the flow here
https://www.klaviyo.com/flow/VeZAbS/edit', NULL, NULL, 65, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-18T17:53:03.789Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207105876398928');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flows/Campagins - Educator Emails ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 66, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-24T20:11:03.087Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208620832381512');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flow - Email copy for Card Game UGC capture', 'Link to Flow 
https://www.klaviyo.com/flow/WCCW2P/edit


MyMusicFolders

https://app.asana.com/0/1205963288822664/1203839139546244/f
Jonathan created the task, but nobody answered

https://app.asana.com/0/1205963288822664/1206115971453843/f
James created the task, but no more updates

https://app.asana.com/0/1205963288822664/1203083863277789/f
Created the task, but no more updates

Price Increases

Competitor analysis
https://app.asana.com/0/1205963288822664/1206445221549060/f

https://app.asana.com/0/1205963288822664/1206671789070939/f
Jonathan created the task but no more updates

Page to fetaure Choirs and Bands

Create copy for page 
https://app.asana.com/0/1205963288822664/1206943364621871/f

Create Featured Choirs and Band Page 
https://app.asana.com/0/1205963288822664/1206943364621872/f

Email copy for Card Game UGC capture
https://app.asana.com/0/1205963288822664/1207164193756056/f

Email copy for Card Game UGC capture
https://app.asana.com/0/1205963288822664/1207164193756056/f', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 67, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-25T00:17:20.989Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207164193756056');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flow - Email to Amazon customers', 'Link to flow
https://www.klaviyo.com/flow/WaNGYV/edit 

Seeing if you could help get a single email flow for Amazon sale for people who buy CHoir robes?  Just need the logic and design, we can get the copy together 

I crearted a segment of all Amazon customers just to see if I could.  What I can do from there is make one for people who purchased a Robe product and we woudl send the email to anyone who enters into that segment 

    Could also set up an email to send to them to offer a free swatch card
        the email could also offer a sizing run to get tll the people in the choir fitted
        
', NULL, NULL, 68, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-08T18:05:40.701Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208002292685099');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flow - Upsell / CrossSell emails - MyMusicFolders', 'Link to Flow 
https://www.klaviyo.com/flow/UCk8QS/edit', NULL, NULL, 69, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-08T20:27:11.018Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208002292685147');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Email copy for VIP Educators ', 'Need some email copy for two emails 
    Requirments to get into the Educator pricing bracket 
    An appreciation email for people already receiving the pricing that we are following up on 
', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 70, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-07-31T20:22:58.563Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205176498695603');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Flow - VIP Flow - EDU emails /  Schools ', 'Link to Flow 
https://www.klaviyo.com/flow/UgqH38/edit

The template on thes emails is wrong, another old email person messed them up.
Please revamp them

might be good to also look at the triggers to make sure its setup correctly
https://www.klaviyo.com/flow/UgqH38/edit', NULL, NULL, 71, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-25T21:45:36.405Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207175904274617');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Email Marketing for MCR', 'Logs and other related items
https://www.klaviyo.com/list/WeUv36

Images of Robes
https://www.dropbox.com/scl/fo/noua0aepfup163fh1eijy/APNmPj1ogH6qO3d95kh_yIQ?rlkey=dk4oa3l1gjed18alf1akt5vo4&e=1&dl=0

All Flows
https://www.klaviyo.com/flows?page=1

Link to MCR Welcome Flow In Klaviyo
https://www.klaviyo.com/flow/USEiuy/edit

Link to MCR Abandoned Checkout Flow
https://www.klaviyo.com/flow/VPLNW9/edit', NULL, NULL, 72, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-15T18:19:24.491Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208066380918761');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'B2B Email Outreach', '    B2b Cold Email
        We can handle mailshake
        someone like Jon
        Need to think through copy and email flows before we launch MailShake
        might want a phone number that can track calls
MailShake account created as a free account until setup. Credentials are:
user:  jon@mymusicfolders.com
PW:  @2zjk4dP8Yympd', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 73, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-11-20T17:38:02.215Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208809346804777');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Monthly customer engagement emails - Robin to do copy', '', NULL, NULL, 74, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-12-13T23:03:53.030Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206165874808440');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Create Blog Content Plan', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 75, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-07-31T20:28:29.898Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205176498695609');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Content Audit', '', NULL, NULL, 76, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-19T04:48:32.804Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205754027150567');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Blog Content Rvamp and Relaunch', '', NULL, NULL, 77, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-19T04:48:32.944Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205754027150570');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Plan for YouTube', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 78, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2022-09-30T23:57:21.041Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1203083863277781');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'MMF SEO Overhaul', 'https://app.asana.com/0/0/1202577413177013/f

https://docs.google.com/spreadsheets/d/1Z5TSJLgqs8UalYl0qsjYGcV5jVGyTzloPhSLdhXp2HQ/edit?usp=sharing

https://docs.google.com/spreadsheets/d/17vnhKJCaN9g0GPPJA5NA0yjEFrU0uPkdo6rYi3X9nko/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 79, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2022-10-28T22:11:31.794Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1203255573106025');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Collection Pages SEO Updates', 'Hey https://app.asana.com/0/1201500833222396/list We are now rolling out the changes on the collections pages which you can find here 

https://docs.google.com/document/d/1wF1OUUf08weof_dTkIwGCyHFE_jHz2CkBru7FiHX9Gs/edit?usp=sharing

Please do not do the "Bottom" section yet as we don''t know what the functionality is yet to put text at the bottom and top of the page. 


https://app.asana.com/app/asana/-/get_asset?asset_id=1205319999637434


Please wait to do this as I need guidance myself on how to edit the collections pages 
 ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 80, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-08-21T21:36:07.597Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205319999637431');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Review SEO KW and Copy Doc for My Choir Robes ', 'https://docs.google.com/spreadsheets/d/1EoIzVC5diJaHjKSIEW3C8NqlAEAD2va9uVXWsUr-vBM/edit

Write a sentence or two on each category page.', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 81, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-09T17:31:00.630Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207262471418456');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'KW implementation ', 'https://docs.google.com/spreadsheets/d/1EoIzVC5diJaHjKSIEW3C8NqlAEAD2va9uVXWsUr-vBM/edit?usp=sharing

https://docs.google.com/document/d/1mLgt_ETjucbDDtrisXT04BhQ9PxTA7w5MFlytsJAtWE/edit?usp=sharing', NULL, NULL, 82, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-19T04:48:33.489Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205754027189048');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'Rewrite Product page Info - Music Folder copy', 'https://docs.google.com/spreadsheets/d/17vnhKJCaN9g0GPPJA5NA0yjEFrU0uPkdo6rYi3X9nko/edit?usp=sharing', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 83, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-16T18:17:51.911Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205971280119264');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'On Hold / Needs FeedBack' LIMIT 1), 'move edu list from BP to BC', '', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 84, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-01-26T18:32:29.878Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1203839139546246');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Done' LIMIT 1), 'Move Non-purhcases Klaviyo Customers to Instantly ', '    move out the 8k people 
    Delete them from Klaviyo
    Run through list cleaner 
    start a 3-email sequence to engage 
    cull out all the dead people 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 85, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-25T20:40:33.865Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1216021025079944');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Done' LIMIT 1), 'Sign up for instantly.ai and figure it out', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 86, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-12T17:01:57.580Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1210535129558334');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'Done' LIMIT 1), 'Monthly KPI sheet', 'https://lookerstudio.google.com/u/0/reporting/2ad719b8-9e6f-4819-b31a-c82ec133a7b7/page/p_vkwaybpxfd

https://docs.google.com/spreadsheets/d/1noLxmWKY5ClmFbaYOUStnqKgCkTmbjh5FCOLH8Evcp4/edit?usp=sharing

https://login.bigcommerce.com/login

yecommerce.io@gmail.com
[password removed during import — ask James]

https://login.bigcommerce.com/
https://analytics.google.com/analytics/web/?authuser=2#/p346136231/reports/intelligenthome
https://ads.google.com/aw/overview?ocid=1383066882&euid=666369315&__u=1418623435&uscid=1383066882&__c=2306792818&authuser=1&workspaceId=0&subid=us-en-awhp-g-aw-c-home-signin%21o2-adshp-hv-q4-22&ascid=1383066882
https://ui.ads.microsoft.com/campaign/smart?aid=138126239&ccuisrc=4&cid=252266795&uid=95428331#/
https://search.google.com/search-console?utm_source=about-page&resource_id=sc-domain:shopuvbulbs.com (No access)
https://www.klaviyo.com/dashboard
https://sellercentral.amazon.com/home (No data access yet)
https://business.facebook.com/ (no access yet)

https://app.asana.com/0/1200910477972058/1200910477972085/f

How to do this 
https://www.loom.com/share/8cd5155f2aa44837bf5acac3060f63c8

https://app.asana.com/app/asana/-/get_asset?asset_id=1207174095086005


', NULL, '2024-07-02'::date, 87, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-25T17:19:06.615Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207174026338601');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'How to roll in the increased cost of returns to our prices on Amazon', 'We need to determine how much more it is costing the business to sell on Amazon due to returns and bake that into the price of the product OR determine if over all costs are not as high as we think and make sure the price reflects that', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 88, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-16T19:04:54.916Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1205971282414470');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Send My Deluxe / My Standard to FBA', 'Time to put best seller into FBA and test ads - how many Dulx folders to send in', NULL, NULL, 89, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-18T23:37:06.172Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207847821996717');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'prepare MyDeluxe for FBA', 'get MyDeluxe single bagged with UPC bar code stickers

    Labels for MyDelux into FBA
    When sending products to Amazon FBA (Fulfillment by Amazon), you''ll need to print and apply additional labels beyond just the shipping labels for the case. These include:
        Product Labels: Amazon requires a unique barcode label on each individual product unit, even if it''s already labeled by the manufacturer. This ensures accurate tracking and inventory management.
        Bundle Labels (if applicable): If you''re sending bundled products, you''ll need to print and apply bundle labels to identify the grouped items.
        Pallet Labels (if applicable): If you''re shipping products on pallets, you''ll need to print and apply pallet labels to help Amazon identify and manage the pallets.
    Remember to follow Amazon''s specific labeling requirements and guidelines to avoid any issues or delays in processing your products.
', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 90, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-18T17:45:44.762Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207800667684770');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Think of Q&A for new Shopper Approved', 'https://app.asana.com/0/profile/1203083754187059 here is what CHralie sasid if you wanted to look at it and try it out 

This widget should be available to you in your Trustpilot account under Share and promote -> Product Review widgets -> Q&A

I believe this should be accessible directly in the BigCommerce plug-in as well. Are you having trouble locating that or did you have specific questions about the functionality itself?', (SELECT id FROM people WHERE email = 'jon@mymusicfolders.com'), NULL, 91, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-08T20:24:18.225Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208002292685138');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Exclusive deals backup plan', '    Could just make the page open to everyone
    Keep prices the same
    coupon would be used to get discount
    Expire each month
', NULL, NULL, 92, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-01T21:40:22.411Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207947366328106');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Direct Mail', '', NULL, NULL, 93, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-30T19:29:21.694Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206062458109704');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Plan for Music Subscription business', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 94, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2022-09-30T23:58:58.673Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1203083863277789');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Ways to advertise to clergy', '    Find out better ways to advertise to these very specific groups of people
        Pastors / Presits
        who else buys this stuff and where do they hang out online
        Some schools buy it too
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 95, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-12-07T01:44:18.714Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206115971453843');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'IDEA - running FB ads to Choir robes ', '', NULL, NULL, 96, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-22T18:32:31.449Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206663022900023');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'Test out free shipping', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 97, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-01-04T18:40:27.620Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206282310003101');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'IDEA - Email us for educator discounts on the bulk discount popup', '', NULL, NULL, 98, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-14T17:24:02.817Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1206844338481469');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'IDEA - Send mailers to Churchs for rboes with addresses we scrape', '', NULL, NULL, 99, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-11T18:03:02.862Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1207050028412513');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205963288822664'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205963288822664') AND name = 'IDEAS' LIMIT 1), 'run FB ads for free + shipping for Robe Samples ', '', NULL, NULL, 100, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-03T17:31:19.109Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205963288822664/task/1208462943699595');

-- Raincaper (69 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Raincaper', 'indigo', '1205800192420188');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205800192420188'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205800192420188'), id FROM people WHERE email = 'lindsay@gazebogreen.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205800192420188'), id FROM people WHERE email = 'meghan@raincaper.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205800192420188'), id FROM people WHERE email = 'pratik.shopifydev@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1205800192420188'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Website - Wholessale', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Website - Retail', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Paid Ads', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Email', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'SEO', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Social Media', 7);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Amazon', 8);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'B2B', 9);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'On Hold / Needs Feedback', 10);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), 'Complete', 11);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Copy over product data to Wholesale ', 'https://docs.google.com/spreadsheets/d/1TBgaWoitbvxlPYVfuxL-17owvha_TsTAqPKijO-3YMc/edit?usp=sharing', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-07T18:07:11.501Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219280780725850');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'How to run whoesale invoices and payments better', '', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-07T17:52:13.861Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219280780725841');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Flows for B2b site - what should we be Running', 'https://claude.ai/chat/8e720c73-5d06-4534-a454-47935ac72416


Current state (Klaviyo: RainCaper - Wholesale, UnXsnp)

    Shopify integration is live: Placed Order, Ordered Product, Fulfilled Order, Checkout Started, Added to Cart, Viewed Product all syncing.
    Only live flow: YE | Auto Suppression Flow for Faire emails.
    9 "YE | ... Wholesale" flows are empty drafts from Feb 2025 (Welcome, Abandoned Checkout, Browse Abandonment, Site Abandoned, Customer Thank You, Upsell, Winback, Sunset, Auto Suppress). Treat as blank shells, not finished work.

Flows to run for B2B (priority order)

    1. Reorder / replenishment - Placed Order trigger, reminders ~45/60/75 days after last order (tune to real reorder cycle). Exit on new order. The main revenue flow for wholesale.
    2. New wholesale account welcome - triggered by wholesale tag (Wholesale Gorilla tag-based pricing) feeding a list. Login, minimums/terms, catalog/line sheet, rep contact. 2-3 emails.
    3. Order thank-you - first order branch (merchandising tips, display assets, how to reorder) vs repeat branch (short thanks + what is new).
    4. Abandoned checkout - plain-text from a real person, no discount bait. Big carts make this worth it.
    5. Lapsed account win-back - no order in 120-180 days, plain-text from rep asking what changed.
    6. Sunset / suppression - keep, lower priority; slow to cut B2B contacts.
    Skip: browse abandonment, site abandonment, generic upsell (retail patterns). New collections / pre-book = campaigns.

Uploading historical orders to Shopify - can we flow to them?

    Yes for segments: imported orders sync to Klaviyo as Placed Order events with original dates, so segments (last order 90+ days, bought X not Y) work on day one. Campaigns to those segments work.
    No for metric-triggered flows: a Placed Order-triggered flow only catches orders placed after it goes live. Existing customers need a segment-triggered flow (e.g. entered "last order 60+ days") or one-off reorder campaigns.
    Run the import before any Placed Order flows go live.
    Matrixify import: turn off customer notifications and inventory decrement.
    Tag imported orders historical-import to filter from reporting and flow logic.
    Check "accepts email marketing" on imported customers. B2B relationship emailing is generally OK in the US (not legal advice); bigger risk is deliverability - send a warm-up campaign before flows hit a cold list.
    Open question: how far back does the order data go, and where from (Shopify export, Faire, other)? Decides Matrixify import vs pushing straight to Klaviyo (avoids Shopify inventory risk).
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-30T17:49:22.815Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219051767697280');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Proposal for cold outreach + B2B plan like Jons plan ', 'https://docs.google.com/document/d/1OCvDIOgep5VOssF4gscl2FzmpSUSHITN4gubRCWx3eU/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-30T17:19:17.417Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219035896760678');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Plan for SMS customer service + marketing ', 'Approach

Two numbers, two tools. Klaviyo and Help Scout don''t pass SMS conversations to each other, so we keep them separate:    Support number: Twilio toll-free number, connected to Help Scout''s native SMS. Used for inbound questions, order/PO status, and agent replies.
    Marketing number: Klaviyo SMS. Used for campaigns, flows, and wholesale reorder nudges. Requires express written marketing consent.
Integration: the Klaviyo–Help Scout integration only goes one way (support events into Klaviyo). We use it to suppress anyone with an open support conversation from SMS campaigns. Replies to Klaviyo campaigns get an auto-reply pointing to the support number or email.
Phase 1: SMS customer service (weeks 1–3)

    Help Scout native SMS is plain text only (no images or attachments) with a 1,600-character limit. Move anything involving images or POs to email.
    Watch out: Help Scout requires the Twilio number to NOT be in a Twilio Messaging Service. 10DLC registration usually puts it in one, so use a toll-free number plus toll-free verification. Confirm with Help Scout before buying.
    Success check at 30 days: message volume, first-response time, and how many texts had to be moved to email.

Phase 2: SMS marketing in Klaviyo (after Phase 1 is stable)

    Collect consent separately for wholesale buyers and consumers, and tag each subscriber with a source property. B2B texts still need consent under the TCPA.
    Start with 3 flows before any campaigns. Campaigns at most 2–4 per month to start.

Owners

    James: consent design, audience split, go/no-go after each phase.
    Klaviyo contractor: Phase 2 build.
    Raincaper team: Twilio account ownership, saved replies, answering texts.
    Lindsey''s attorney: opt-in language.

Open question

Roughly what share of revenue is DTC vs. wholesale? The answer decides whether Phase 2 leads with wholesale reorder flows or consumer flows.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-30T17:16:16.365Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219035896760675');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Sync Am Customers + Companies to Shopify ', 'https://docs.google.com/spreadsheets/d/1h8ewV7aO1Ws-9pHHRy4Zm0HFWczCVKDe9KF9VIVP12Y/edit?usp=sharing

new List with notes 
https://docs.google.com/spreadsheets/d/1psvDXad_uS-M8dudsul5bMMi2BMx4HwbAMjUVXxwtUg/edit?usp=sharing

https://claude.ai/chat/eda52ace-d56e-4d23-b9c8-7f2eda69089f', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-23T17:43:56.886Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1218794217399315');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Pre-order Fixes', 'should have time on it on both sites 
    Check out
    Thank you page revamp 
    Verbiage on all 
    date or estimate of whenit arrives 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-30T17:42:34.179Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219051767697276');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Need to cross reference missing products ', 'missing marry englibright products on Wholesale 
17th - 19th new products and collections 
some new stuff on pre order that is live 
we need to make sure al data in Retail site is on Wholesale site
Pull matrixify and use claude to reference which is which ', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-22T17:16:12.608Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1216809641632361');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Pull in all preorder products from B2C into B2B', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-23T17:35:38.437Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1218794217399312');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Preorder Messaging Fix - Both Rain caper Sites', 'Goal: Preorder items should show "Pre-order — ships by [date]" instead of the generic "Preorder" on the product page, cart drawer, cart page, checkout, and order confirmation email.
Before you start: Duplicate the live theme and work on the copy. Pick one preorder product to test with, and have a normal in-stock product ready too.

Task 1: Set the ship date and message in PreOrder Wolf (no code)
    Open PreOrder Wolf and go to the preorder setting for the product or collection in question.
    Confirm the expected ship/delivery date field is filled in.
    Find the delivery text / cart label / message settings and change the text to include the date, for example: Pre-order — ships by {date}. Use whatever date variable the app provides.
    If there''s no field for the cart label, or it still says "Type: Preorder," open the in-app chat with Wolf support. Ask them to change the cart line item property to show "Pre-order — ships by [date]" and to make sure the property name doesn''t start with an underscore, because an underscore hides it at checkout.
    Check: Add the preorder item to the cart. Then open the browser console and run fetch(''/cart.js'').then(r=>r.json()).then(c=>console.log(c.items.map(i=>i.properties))). The property with the date should be there.
Checkout usually works automatically once this is done, because Shopify shows non-underscore line item properties under the item.

Task 2: Show the preorder note in the cart drawer
Many themes skip line item properties in the drawer even though they show them on the cart page.
    Open the drawer markup. In Dawn that''s snippets/cart-drawer.liquid. Other themes use something like cart-drawer, mini-cart, or cart-item in snippets or sections.
    Find the loop over cart.items and the spot under the product title and variant.
    Check whether item.properties is already rendered there. If it isn''t, add this:
liquid

{%- for property in item.properties -%}
  {%- assign first_char = property.first | slice: 0 -%}
  {%- if property.last != blank and first_char != ''_'' -%}
    <p class="cart-item__preorder-note">{{ property.first }}: {{ property.last }}</p>
  {%- endif -%}
{%- endfor -%}

    Add light styling in the theme CSS so the note stands out a little:
css

.cart-item__preorder-note { font-size: 1.2rem; font-weight: 600; margin-top: .4rem; }

    Check: Add the item from the product page without refreshing. The drawer re-renders over AJAX, so the note has to show on that first open, not only after a page reload.

Task 3 (fallback): Theme-level preorder note that doesn''t depend on the app
Do this if the Wolf property is unreliable, or if you want a consistent message you control.
    In Settings → Custom data → Products, create a metafield custom.preorder_ship_date of type Date.
    Tag preorder products preorder and fill in the date.
    In the same drawer spot, and in main-cart-items.liquid for the cart page, add:
liquid

{%- if item.product.tags contains ''preorder'' -%}
  <p class="cart-item__preorder-note">
    This item is on preorder
    {%- if item.product.metafields.custom.preorder_ship_date != blank -%}
      — ships by {{ item.product.metafields.custom.preorder_ship_date | date: ''%b %-d, %Y'' }}
    {%- endif -%}
  </p>
{%- endif -%}

Only use Task 2 or Task 3 for the same item, not both, or the note will appear twice.
This fallback only shows in the cart. Checkout shows line item properties, not tags, so checkout still relies on the Task 1 property.

Task 4: Cart page
    Open sections/main-cart-items.liquid, or your theme''s equivalent.
    Confirm the same note appears. Dawn already renders properties here, but check it.

Task 5: Order confirmation email
    Go to Settings → Notifications → Order confirmation → Edit code.
    Find the line item loop (for line in subtotal_line_items or line_items), under the title and variant.
    If properties aren''t already printed, add:
liquid

{% for property in line.properties %}
  {% assign first_char = property.first | slice: ', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-30T18:47:48.915Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219035967289462');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'To Do' LIMIT 1), 'Bundle upsell - how to implement ', 'Example 
    buy six lenscothes and save 
    drop down 
    just adds 6 to the cart 

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21T17:56:10.982Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219749734143035');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Wholessale' LIMIT 1), 'Website Issues to fix ', '-', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21T17:26:27.332Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219749734143020');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Wholessale' LIMIT 1), 'Need to fix Shopify B2B', '    Companies not approved 
    dont have locations 
    dont have terms 
    
', NULL, NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-02T17:29:25.015Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1218116599862616');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Wholessale' LIMIT 1), 'Net Payment Terms Email Copy ', 'Current Copy 

Thank you for your order. You selected Net 15/Net 30 payment terms. To complete your order, we need some additional information from your business. Please reply to this email with the requested details, and our team will review your account shortly.

Our team will be in touch promptly to follow up with next steps.
If you have any questions, we’re happy to help at info@raincaper.com.
Thank you,
RainCaper Wholesale', (SELECT id FROM people WHERE email = 'meghan@raincaper.com'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-19T17:16:08.856Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1217652483253196');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Wholessale' LIMIT 1), 'Send Email for new order to rep group', '    Order comes in 
    Company container contact tag = rep group
    send 
', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-22T17:56:53.795Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1216809641632365');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Preorder app issues - Lindsey short fix now', 'issues are 
    Need to take some products off pre-order but not all 
    The issue is some productrs have been lost in the warehouse move they are doing 
    

From the client 
Struggling w/ overselling right now on so many items until the last truck arrives from old 3PL. I thought I set Preorder Wolf to have nothing showing on preorder, but not true; I cannot find a way to bulk turn preorder off for now.
And the cust who are ordering things we are out of do not seem to be getting an order conf message with preorder? Having trouble finding an example - for some, it may have shown in stock at the time but shipped to someone else

We’re messaging ppl one at a time and drowning in partial ships and attempted substitutions.
I set Sell when Out of Stock to off for this SKU, and it shows Out of Stock - yuck (also why does this say Save 0%?', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-06-03T15:18:18.148Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1210054226074186');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Create Discount Metafield and add to products', 'https://app.asana.com/1/1200828512126939/profile/1207280512753193 we need to display discount codes and auto discounts we setup in shopify. 
Can we add a mta field to all products to make sure that shows up on the product page? 

let meknow if you need more info ', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-18T17:42:30.013Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1213726244106737');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Change Sale badge styling - Raincaper', 'Currently the badge is square and says a % off for on sale items.  - also how do you change this? 

https://app.asana.com/app/asana/-/get_asset?asset_id=1213344303858285



We want to have the same styling as the New badge and just rad "Sale" 

https://app.asana.com/app/asana/-/get_asset?asset_id=1213344288591420



', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-18T18:22:04.734Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1213344288591416');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Replace Lukcy Orange with Microsoft Clarity  - RainCaper', '', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-18T18:05:28.971Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1213344288591396');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Improve "your order shipped'' email contents', 'Cust for order https://admin.shopify.com/store/raincaper/orders/7054035845437called - her order RC15558 shipped in 2 shipments, and each confirmation email  just shows the complete order contents. Pls change such that it shows what DID ship in that shipment

OOPS I updated the order # to be the 3/31/26 one

https://app.asana.com/app/asana/-/get_asset?asset_id=1213970605478977


', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-07T20:11:10.413Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1213970605478972');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Website - Retail' LIMIT 1), 'Pre-order showing for Sell When out of stock orders ', 'Issues 
    products are showing Pre-order when they are set to "sell when our of stock" 

Fix 
    When products are set to sell when out of stock, they should not be on pre-order
Product example
https://admin.shopify.com/store/raincaper/products/9731187769661


https://app.asana.com/app/asana/-/get_asset?asset_id=1214783842632294



', NULL, NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-13T17:37:33.715Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1214783842632291');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Paid Ads' LIMIT 1), 'Meta Ads ', 'Feed setup 
    No Umbrellas 
    Best sellers last six months
    Cull worst sellers 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-18T17:34:52.660Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1213726244106734');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Paid Ads' LIMIT 1), 'Google ads - Raincaper ', 'Goals for this account 
    Keep scaling spend if we can
    Keep maintaining Feed strategy 
    Make sure we maintain our blended ROAS target of 400% 
    launch a standard search or dynamic search campagin 
', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-22T17:48:45.462Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211419325479774');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Paid Ads' LIMIT 1), 'Google Ads - MailTIme', 'https://app.asana.com/0/profile/1211431490462349 Forgot to add this to this small account to the mix. 
Raincaper owns this brand. 
My thought was just to add a Standard Shopping and switch this to a feeder
Let me know
thanks  ', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-13T20:13:53.007Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211627917283754');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Paid Ads' LIMIT 1), 'Bing ads - raincaper ', 'can you help us launch Bing ads for this brand as well? 

let me know
thanks ', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-27T17:37:54.750Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211164596590276');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Paid Ads' LIMIT 1), 'Bing Ads for - Raincaper', '', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-08T17:27:38.891Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211590933392431');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Check Email Segments / Camapagins ', 'https://app.asana.com/app/asana/-/get_asset?asset_id=1214944116220081


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-13T17:47:31.160Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1214783842632298');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'INFO', 'Approved FOnts
Logo Font Big Mouth Regular (Raleway is ok, too)
Headline: Century Gothic Bold
Fancy copy: Myriad Pro Italic', NULL, NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-24T20:24:13.437Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1212077056318539');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Fix Welcome flow - Raincaper', 'https://app.asana.com/0/profile/1206892488704423 the client does like the wording of one of these emails - not 100% sure which one it is, but lets change it. 

here is her feedback:

is this email in a flow from Klaviyo? A cust just messaged - the ‘redeem within 24H’ felt insulting. I don’t see the discount in Shopify to look at it - it seems like bes tpractice would be more like “next 30 days” and one-time?
She ordered $246 so I just gave it back to her as a refund, but the messaging is a bit odd

https://app.asana.com/app/asana/-/get_asset?asset_id=1211153720438077


', NULL, NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-26T19:14:03.530Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211153720438073');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Create upsell emails ', 'https://app.asana.com/0/1206892488704433/list Im not sure if we did this for Raincaper but we need to also setup Upsell/cross sell emails for this brand

here is the list of products with their upsells 
https://docs.google.com/spreadsheets/d/1VkS4wFVfM7CNezcVh08vy_JqVgULG3TvPmZUp586TFQ/edit#gid=772746561', NULL, NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-01T19:01:43.052Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1207207583385301');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Email Segment to Identify Wholesale customers - Raincaper', '    .org
    Upload Wholesale list to exclude
', NULL, NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-07T18:40:01.794Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208002292685025');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Get Email popup and email plan for people on the wholesale landing page  - Raincaper ', '    Name
    Store
    city, State
    Email + Phone
    Call or email?
    Then setup notification for Lindsey
', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-07T18:40:55.833Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208002292685028');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Whole Customers within a radius - Raincaper', '    Name
    Store
    city, State
    Email + Phone
    Call or email?
    Then setup notification for Lindsey
', NULL, NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-07T18:41:03.784Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208002292685030');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Prevent Wholesale segment from seeing Retail emails - Raincaper', '', NULL, NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-07T18:41:30.231Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208002292685033');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Create flow to Autospress unhealthy email', 'Ca', NULL, NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-11T17:35:27.594Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208530832649536');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Ensure B2B customers are not gettng regular email flows', 'https://app.asana.com/0/profile/1206892488704423 Raincaper has a lot of B2B business and we need to make sure that the flows were are B2C oriented are not going to the B2b Clients. 

This is the list
https://www.klaviyo.com/list/YgBdbb/b2b-customer-list-aperalmagic

Let me know if we can set this up
thanks', NULL, NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-11T21:41:25.257Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208530832649602');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'B2B Segmants for certain products', '    We can change emails in bulk by download then upload by using the Customer ID
    Can use Tags to upload to Klaviyp what people ordered to send specific emails to lists
', NULL, NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-10-24T20:35:49.834Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208623113277564');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Mock up quick Christmas gifts email - raincaper', 'https://app.asana.com/0/profile/1206892488704423 Can you try to whip up a quick email for rain caper to promote Christmas gifts please? ', NULL, NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-10T05:23:05.738Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208942978426412');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Email' LIMIT 1), 'Clone all email templates from Raincaper to Raincaper - Wholesale', 'https://app.asana.com/0/profile/1206892488704423 we are spliting Raincapers emails into two separate accounts for wholesale and retail.  we have a bunch of templates in the retail one, please clone them over to the wholesale one. 

Also anything else we should clone would be good, we probably wont have any flows for now in the wholesale, maybe some b2b camopagins can be cloned? 

I just gave you acccess', NULL, NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-02-12T00:16:57.882Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1209380617279378');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'SEO' LIMIT 1), 'SEO Revamp Plan', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-09T21:59:03.701Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1207039379054400');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'Display UGC on site ', '', NULL, NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:28:07.593Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372348');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'Collecte UGC generateed ', '', NULL, NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:27:59.344Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372347');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'Geting Sales peron so manage', '', NULL, NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:27:47.502Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372346');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'Posting to applicable socail channel regularly ', '', NULL, NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:27:29.556Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372345');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'How to activiely monitor mentions ', '', NULL, NULL, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:27:23.625Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372344');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Social Media' LIMIT 1), 'Social Media', '', NULL, NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:27:04.488Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372342');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Amazon Person Info ', '    updated listings 
    updated A+ 
    best practices 
    PPC management 
    
', NULL, NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21T17:11:40.894Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1219749734143014');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Per ASIN profitability', '', NULL, NULL, 48, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-01T20:07:46.866Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205856377215504');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Visibility into channel profitability', '', NULL, NULL, 49, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-01T20:07:45.884Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205856377215503');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Tune-up', '', NULL, NULL, 50, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-24T20:39:46.974Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205798227272620');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Phase 2', '', NULL, NULL, 51, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-26T22:14:55.541Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205817672081009');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Audit ', '', NULL, NULL, 52, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-24T20:39:43.669Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205798227272618');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Plan ', '', NULL, NULL, 53, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-24T20:39:46.069Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205798227272619');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Amazon' LIMIT 1), 'Amazon Improvements', '    Currenty Happy with Ads
    Someone needs to take more ownership
    A+ content - a bit stale
    New content
    Large graphics might be better for A+ content
    Phase 2
        Images
        copy
', NULL, NULL, 54, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-24T20:36:57.532Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205798227272601');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'B2B' LIMIT 1), 'B2B ', '', NULL, NULL, 55, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-29T21:26:46.542Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206060066372338');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'B2b outreach plan ', '', NULL, NULL, 56, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-25T17:50:40.635Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1210640194367447');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Rainaper Wholesale - Cart message for Min/Max app', 'https://app.asana.com/0/profile/1207280512753193 can you get this embed installed on the raincper wholesale store please https://docs.minmaxify.com/article/401-embedded-cart-violation-message', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 57, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-18T15:08:29.265Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211981189457894');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Raincaper Wholesale Site Flow setup', 'Pls use Flow to do a few things in B2b Shopify:
    Insert a shipping method for all Faire orders (vhttps://www.loom.com/share/347fe4abdd0346b3ac2461303cfa2a77 but Shopify - Economy would be fine or a custom one called BEST BESTGROUND)
    Actually I edited a SS with the 3 fields that would make me happy :)

https://app.asana.com/app/asana/-/get_asset?asset_id=1211710747763613


', NULL, NULL, 58, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-21T19:17:53.346Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211710747763607');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Upsells', 'Spreadsheet of Upsell Groups 
https://docs.google.com/spreadsheets/d/1VkS4wFVfM7CNezcVh08vy_JqVgULG3TvPmZUp586TFQ/edit?usp=sharing

Loom video on locations
https://www.loom.com/share/032a3b6c2c8440caac91d4f389f7e63d?sid=1cd4325c-55b9-40ea-aa13-1078ece99ebd

https://app.asana.com/app/asana/-/get_asset?asset_id=1207207583385300


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 59, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T18:55:52.195Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206602954631243');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), ' Sellerboard  Implementation', '', NULL, NULL, 60, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-11-01T20:07:47.085Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205856377215505');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Mailtime Amazon', '', NULL, NULL, 61, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-10-24T20:40:23.817Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1205798227272621');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Etsy', 'Etsy is set up MOSTLY correctly. Do you know:
    Why tax revenue is mapping to Shopify and not calling it tax
    How can we disable Etsy listings for all items that are Archived / not active in Shopify? I can’t select them by grouping in the first screen,  but i can select Shopify Collection. But I don’t see how to make a Shop Collection for Automated by Product status.
    EDIT: I made both a Tag and a manual Collection called Archived to attempt to exclude these from Etsy but they are not showing up in the filter choices. Argh!
    I keep putting items in Sections in Etsy but they are not sticking; ideas? I did set Etsy categories in the Bulk Edit om the Shopify app, but myk sections aren’t exactly the same title. I can make them be same title
', NULL, NULL, 62, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2023-12-09T16:47:56.127Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1206133994556462');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Flow to tag orders NO SKU with line item discount item with no sku - Raincaper Wholesale', 'Raincaoer Wholesale order #PJDARP8JSW

This order came in with a line item product that was actually just a discount and had no SKU can we make a flow in here to jiust tag any order with a line item without a SKU = NO SKU ', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 63, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-15T17:55:38.040Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211652155230302');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Create Whoelsale Segements - Raincaper - whoelsale', '    everyone who has purchased X artists oiver the last 6 monrths 
', NULL, NULL, 64, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-17T17:13:23.131Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211386975992882');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Can we map customer names differntly in the wholesale site', 'Currently, the customer name is the persons name but we need to change that to be the Business name first then the contact name - is that possilbe in settings or with a flow? ', NULL, NULL, 65, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-15T17:49:01.006Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211652155230299');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Cordinate more Retail emails ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 66, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-13T19:38:28.743Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1211046912264826');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Upsells', '
    Add product widget
    Check to Checkout click from Add to Cart
    Get live
    Focus on top 50 SKus that have bedt sales for upsells
    Send Lindsey SOP on how to edit the OCUs
Top sellers
https://docs.google.com/spreadsheets/d/15vQA1SoFBkeXEouEeB7TvrD0ePsbixq30QMtsqMxA1s/edit?usp=sharing

Upsell doc 
https://docs.google.com/spreadsheets/d/1VkS4wFVfM7CNezcVh08vy_JqVgULG3TvPmZUp586TFQ/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 67, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-14T18:45:39.655Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1208055426468349');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Am not syncing Imaghes - Lindsey to do', '', NULL, NULL, 68, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-12-30T20:18:40.824Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1209061659242879');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1205800192420188'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1205800192420188') AND name = 'Complete' LIMIT 1), 'Fix cateogieres with wrong setups', 'Raincaper has a lot of categories that were not setup right and now are showing the wrong mix of product.

Example bellow are missing certain products because it was setup manuall
https://admin.shopify.com/store/raincaper/collections/153772949615

Spreadsheet to work in
https://docs.google.com/spreadsheets/d/1WPS3gIJ9WthRmX9JrH9r7XqNTjDJqSqlyl9DABYPAMY/edit#gid=0

How to setup 
    Change all Manual and Product tags 
    Use Product Type or Title contains

how to perform task', NULL, NULL, 69, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-15T17:58:43.960Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205800192420188/task/1207310321597503');

-- BeeInspired Goods (47 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('BeeInspired Goods', 'yellow-orange', '1206550568079069');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1206550568079069'), id FROM people WHERE email = 'haiderishani96@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1206550568079069'), id FROM people WHERE email = 'huzaifafreelance28@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1206550568079069'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1206550568079069'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1206550568079069'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'To do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'B2B', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'Website', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'Paid Ads', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'Amazon', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'SEO', 6);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'Affilaites', 7);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'On Hold / Needs Feedback', 8);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'Complete', 9);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), 'IDEAS', 10);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'To do' LIMIT 1), 'Put in existing customer list into Instantly  - beeinsy', 'https://app.asana.com/0/1213320891764065/1213320891764065 Need to get this Instantly for beeinspired as a do not email list of existing customers', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-16T01:12:08.989Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1210054226074349');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'To do' LIMIT 1), 'BFCM for BeeInspired Goods', 'Kara Brook
2:00 PM (31 minutes ago)




to Chauntel

https://app.asana.com/app/asana/-/get_asset?asset_id=1211809703710694

https://app.asana.com/app/asana/-/get_asset?asset_id=1211809703710692

Hey,.

BFCM the offer was 20% off.

I just looked up the card.

It doesn’t even have an offer.

I accept responsibility.

Just wondering if there is any chance or if it’s too late to fix this.

It should say 20% Starting Tuesday November 25th through Cyber Monday for our best customers. Or something like that on the front and the back.

We have a plan to change our web site… but the card would be better if it’s not too late.

https://app.asana.com/app/asana/-/get_asset?asset_id=1211808720800895


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-29T21:32:44.559Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1211787484075342');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'To do' LIMIT 1), 'How to increase AOV / Determin', '    Come up with a plan to increase AOV 
    Determin what LTV is 
    What is ideal MER
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-22T18:42:26.750Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1214154757739704');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'To do' LIMIT 1), 'Update Weghts/product info in Amazon', 'https://app.asana.com/1/1200828512126939/profile/1207338603211127 we need to make sure the weights and other prouct info is correct for shipping charges
Here is the info 
https://www.dropbox.com/scl/fi/bjcpzd51nodmmc4w6glw7/bi-amazon-catalog-09-24-2026-UPDATED.xlsx?rlkey=38hs5wcm5objapctfyds4twgg&dl=0

let me know if you have questions 
Cheers!', (SELECT id FROM people WHERE email = 'haiderishani96@gmail.com'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-07T18:34:57.625Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1219280196933370');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'To do' LIMIT 1), 'Get instantly emails forwarded to Kara', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-21T18:26:23.782Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1219752457499083');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'Build out Cold Outreach Process ', 'https://docs.google.com/spreadsheets/d/1MyLjuHGm6Z36kXX2YI1eRcaYcvF9zUVtbGKqmNQzlWE/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1rB9sakyOkX0o3d7-krYJlTCeQok6sTFd-saQG0sjXR8/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1z1V3tLl24VEMmibgdn4_-wLFB6U406bs1SEF_urN03Q/edit?usp=sharing

https://docs.google.com/spreadsheets/d/10wPnaxcxcHpxXkCVTpqO7KG5nuWoDuFu1SODtblJEvA/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1JOHFhV8ZMUh-6jgEFynAg-x4dwd6K_JA-AptVo5uGZE/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1Bh7DneDUzL_dnF-qwgKBcF3G_vcfHagnDimWudrFtTY/edit?usp=sharing

https://docs.google.com/document/d/1UFnGnSWrgnbTqve78ptBWxaRHTwd-D_0U8aZoNL6-x8/edit?usp=sharing

https://claude.ai/chat/1dfec853-3125-475b-8ca7-5bc4940ef13f

Client Website 
https://beeinspiredgoods.com/

Whoesale Website 
https://wholesale.beeinspiredgoods.com/

Emails names 
kara 
kb
kara brook brown

', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-09T19:35:19.852Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1218337808413911');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'Process to work and follow up with warm leads', 'We need to work with Kara on a system on how to engage warm leads, and follow up
also need a system on following up with past customers that have lapsed 

https://docs.google.com/document/d/1JEbSqX7PDNrTuiNzOLz7pe0JDXbpfNgz_qNQDVSbEMU/edit?usp=sharing

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-07-08T18:40:25.136Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1210732348911152');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'B2B', 'Help strategize your B2B outreach and growth', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T00:40:26.372Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206596666575216');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'B2B Emails', 'https://docs.google.com/spreadsheets/d/1npunuh7lwbGmj3uZmDNwch8i9G2bODA3BuuuN5ihJ-4/edit?usp=sharing

https://docs.google.com/spreadsheets/d/1npunuh7lwbGmj3uZmDNwch8i9G2bODA3BuuuN5ihJ-4/edit?usp=sharing', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-05T17:35:02.135Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207004932150801');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'Clean up Old Email outreach list - BeeInspired', 'https://app.asana.com/1/1200828512126939/profile/1213320871220104 I forget I had this old list of scraped emails to for cold outreach 

we need to get this cleaned up and combined

Can you do that? ', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-09T20:05:16.918Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1218335334968877');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'B2B' LIMIT 1), 'Put new forward email address - BeeInspired', 'Orders@beeinspiredgoods.com', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-09-25T20:15:35.990Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1218876110208251');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Website' LIMIT 1), 'Reviews and Loyalty', '    Better options out there
    Toki to replace http://Smile.io
', NULL, NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T00:40:42.866Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206596666575220');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Paid Ads' LIMIT 1), 'Google ads - BeeInspired', 'https://app.asana.com/0/profile/1211431490462349 Currently our plan is to
    Keep scaling spend if we can
    Make sure we maintain our blended ROAS target of a 250% 
    Launch a brand campaign 
    launch a standard search or dynamic search campagin 
', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-22T23:55:24.608Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1211127020026936');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Paid Ads' LIMIT 1), 'Bing Ads - BeeInspired', '', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-02-11T19:54:30.706Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1213233415043905');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Paid Ads' LIMIT 1), 'TikTok - BeeInspired', '', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-13T21:12:41.552Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1213638956198629');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Paid Ads' LIMIT 1), 'Meta Ads - BeeInspired', 'https://docs.google.com/spreadsheets/d/1HqSC7ExAMRzVXeaZefaAVtNYam_QuGlQCZZIb5OYq_U/edit?usp=sharing


All Past Customers
https://docs.google.com/spreadsheets/d/1J63OBrStMXSjeVyYhkO9sM9azrSh55Xm0XAwlqF0rUU/edit?usp=sharing



https://docs.google.com/document/d/1KEa8S_9QhvoSKEbWCcgy0SiS-1VLtwwSYLNMSd7CKig/edit?usp=sharing



Brand book https://www.dropbox.com/scl/fi/k64ru64phrxulsil3kux6/Bee-Inspired-Brand-Guidelines-v3.pdf?rlkey=yn3vrhsq4wiuyfrp156mwixjt&e=1&dl=0


', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-28T20:07:29.283Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1208173000756692');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Amazon' LIMIT 1), 'Amazon ', 'Amazon Products Master Sheet
https://docs.google.com/spreadsheets/d/14LoqnyFcTV1MBMMU1jM0no9DCJPbNz0EvKYJCLgwM2Q/edit#gid=0

Aug 1st goal to sstart work on Amazon ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-27T21:09:36.407Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206943364621806');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Amazon' LIMIT 1), 'Amazon Product Optimziation', '    Amazon
        Find KW for three products and give to them
        do 3 - 4 of them
        Send loom on how to do
', NULL, NULL, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-28T21:11:06.258Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1208173000756705');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'SEO' LIMIT 1), 'Content Marketing', 'Surferseo.com', NULL, NULL, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-08T21:48:30.395Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207262471418412');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'SEO' LIMIT 1), 'Evaluate new link opps ', 'https://app.asana.com/0/profile/1206740814758105 Here is a list of new link opportunities to evaluate 

https://docs.google.com/spreadsheets/d/14KCaV86e9ouRyDz-kjpf5jAnVgjLqpcFqpQj4ORvD40/edit?usp=sharing', NULL, NULL, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-12T18:41:22.968Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1208038150818297');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Affilaites' LIMIT 1), 'BeeInspired Invite new publishers - AWIN', 'Where to search for opportunities 
AWIN > Publishers > Search - Opportunities Marketplace 
AWIN > Publishers > Search - Partner Directory 


🔑 Keywords to Use in AWIN Publisher Search

Gift-related keywords
    gift baskets
    holiday gifts
    Rosh Hashanah gifts
    hostess gifts
    thank-you gifts
    gourmet gifts
    Jewish gifts
    corporate gifts
Product / Niche keywords
    honey
    kosher
    gourmet foods
    natural foods
    organic foods
    artisan gifts
    sustainable products
    small-batch gifts
Publisher type keywords
    food blogger
    recipe blog
    Jewish lifestyle
    kosher living
    eco-friendly blog
    gift guide
    corporate gifting
    coupon / deal site


✍️ Concise Invitation Blurbs (<500 characters)

General / Lifestyle Affiliates

> Join BeeInspiredGoods.com on AWIN! We craft gourmet, STAR-K kosher honey & natural gift sets—perfect for holidays, Rosh Hashanah, or everyday gifting. Excellent commissions + beautiful, high-converting products.

Coupon / Deal Sites

> Partner with BeeInspiredGoods.com on AWIN! Premium kosher honey gifts & gourmet sets for holidays & year-round gifting. Great commissions + strong seasonal demand.

Corporate / B2B Focus

> Join BeeInspiredGoods.com’s AWIN program! We offer premium kosher & natural honey gifts perfect for clients, employees, & holidays. High AOV, strong repeat demand, and great commissions.


How to do this
https://www.loom.com/share/58eb7f99fe8c4bd9a5e8f0e4e684b38e?sid=47612dad-8708-4fc7-8512-66b3fcc96c42', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-08T21:54:59.713Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1211592434098414');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Affilaites' LIMIT 1), 'How to better leverage Amazon to push affiliates there ', '', NULL, NULL, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-10T20:47:51.856Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207781392764908');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Affilaites' LIMIT 1), 'Affilates', '    Already has a https://account.shareasale.com/m-account.cfm account
    Needs to get it audited and work correctly again
    then we can try to scale it 

kb@beeinspiredgoods.com
[password removed during import — ask James]

https://docs.google.com/document/d/1HCdBLbG1yGOUTYBEAtmELyjjYkDFCCvaTjiTmEyKqUw/edit

https://docs.google.com/document/d/1fLiJpzJSz7KMaPp3xhv1nzV52Ilz2Ld1bOD4zrLXDYc/edit?usp=sharing

Program Link
http://www.shareasale.com/join/144285

', NULL, NULL, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-14T03:59:59.209Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206837286796712');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'B2B Seamless.ai Outreach plan', 'https://docs.google.com/document/d/1PKHKLt4lDO6kLly41DUrp0Z8i6tN1fw2A2H3URI3Vm4/edit?usp=sharing
    kara working on this doc 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-05-21T18:58:58.196Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1210333224961716');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'P&L - monthly review of P&L with my metrics ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-11-20T19:48:15.926Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1208809351578285');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Pricing', '    DUO wanted to incrase pricing 22% across board
    They went 11% on some products
', NULL, NULL, 26, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T22:42:28.528Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206602955480902');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Rank Tupalo Honey page', 'https://app.asana.com/0/profile/1206740814758105 here are the assest for this campaign 

Pages to build links to 
https://beeinspiredgoods.com/products/tupelo-honey
https://beeinspiredgoods.com/blogs/honey-recipes/what-is-tupelo-honey

here is the list of backlinks currently to top rankers 
https://docs.google.com/spreadsheets/d/1vV22tUqzCIgEbIevrIBQHzgXHqN1Zi4kIG_QrU6Ny1U/edit?gid=0#gid=0


', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 27, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-11-20T19:47:58.624Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1208809351578282');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Concious Coconut Email outreach - BeeInspired - ', 'List of Contacts 
https://docs.google.com/spreadsheets/d/1fMqqjQrT6NLlVvGxyB-jusu1ZT_hJ1fitIOLYjkSRi0/edit?usp=sharing


Email Copy
https://docs.google.com/document/d/1wU2VnCz7Lz7UQJAzZGQWZHCS3wI8jQLEzwNEIQVo7jY/edit?usp=sharing

', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 28, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-16T23:32:37.263Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207826409719974');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'How to scale finding resorts with beed', 'need to fugre out how to find contact info for resorts that keep bees to reach out to them ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 29, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-08T20:26:29.927Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207760685594074');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'FB Ads ', '    Good product for FB ads
    They have ideas for videos to make
For ugc 
https://app.asana.com/0/1206550568079069/1206717525861395/f', NULL, NULL, 30, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-28T23:41:04.705Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206717525861388');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Dig through P&L and set % targets for each category ', 'https://docs.google.com/spreadsheets/d/1KwvWjUvoJ0O9FmSTg3QnYAwTckV8wusjMH2vwfupHwM/edit?usp=sharing

P&L Analysis 

Take away 
    Spending too much on labor 
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 31, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-08-01T19:09:46.020Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207947366328087');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Start Cold Email Outreach in MailChimp', 'https://app.asana.com/0/profile/1206892488704423 we are ready to start using the flow in MailChimp for the cold emails we scraped 

The list is the Cleaned Scraped emails tab on this sheet 
https://docs.google.com/spreadsheets/d/1npunuh7lwbGmj3uZmDNwch8i9G2bODA3BuuuN5ihJ-4/edit?usp=sharing', NULL, NULL, 32, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-08T20:21:08.763Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207760685594065');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Missed Opps', '    Missed opportunites
        No Valendtines day campagins on Facebook and Google Ads
', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 33, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T22:41:32.993Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206602955480898');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Social Media', 'This is the persona, this is the channels they live on them, this is how we will reach them, this is the content that we will create for them

    Not a solid strategy
    Could be going better
    “Not enough interaction there”
https://docs.google.com/document/d/1v0A4n4hdENlAu7jkFRG8S6Q9P9RwofJrBnvv9924wSg/edit?usp=sharing

https://app.later.com/8G9KK/schedule/calendar', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 34, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-14T04:31:36.141Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206837287161853');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'UGC', 'https://www.upfluence.com/pricing
https://joinbrands.com

Link to Dropbox for UGC
https://www.dropbox.com/scl/fo/8ze28qzg9r8xn4v5sbsg2/h?rlkey=71601oeirw8mj7tgouix00zpg&dl=0', NULL, NULL, 35, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-19T21:18:11.690Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206883246963458');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Action PLan for Jewish NY', 'Action PLan 
https://docs.google.com/document/d/1b3FtGCEx8I4iH0VFoKDHrs6Ich3RhEkRZW1JeZ4UpBo/edit?usp=sharing


Jewish New Year
Jewish New Year is 10-2-24 this year.
We lost most of our ranking for rosh hashana (jewish new year) keywords with the rebrand.
Our honey is STAR K certified kosher, that is the most difficult certification you can get.
Keywords/Content
Rosh Hashanah and Honey
Rosh Hashanah honey gifts
Jewish New Year Gifts
Honey for Jewish New Year
https://beeinspiredgoods.com/blogs/occasions/rosh-hashanah
https://beeinspiredgoods.com/collections/gifts-for-rosh-hashanah
Rosh Hashanah Dinner Ideas
https://beeinspiredgoods.com/blogs/occasions/rosh-hashanah-dinner
https://beeinspiredgoods.com/collections/kosher-honey-gifts
(see keyword report attached)
Keyword Research
If you log into surferSEO you will see that I did KW research on terms but I need help thinking through what to do with Emily. Emily started to rework content for us in Surfer SEO, also so if you log in, you will see where that is.
Public Relations/Affiliates
Last year, the PR firm got these placements. We were in the first and second spots on these, do we offer a higher commission?
https://www.goodhousekeeping.com/holidays/gift-ideas/g44776383/rosh-hashanah-gift-ideas/
https://www.womansday.com/relationships/family-friends/g44703436/gift-ideas-for-rosh-hashanah/
Ads
We were in NYT front page in 2018 I think that for ads we should put the feature and the news outlet for social credibility. Do you agree?
https://www.nytimes.com/2018/08/21/dining/rosh-hashana-honey.html
More Affiliates
Can Neesha do more outreach for Rosh Hashanah gift guide placements with the big publishers? Jamie Geller is a big one. May be too costly, not sure. Don’t know enough.
Propects
**https://www.myjewishlearning.com/article/rosh-hashanah-gift-guide/**
https://peacelovelightshop.com/
https://www.townandcountrymag.com/society/g40677633/rosh-hashanah-gift-ideas/
https://18doors.org/rosh-hashanah-gifts/
Guest Articles
Can we do guest article outreach on this topic?
Seems like Oh nuts and others are competitors for these keywords, am thinking about pitching wholesale to them so that we are included. There are a few big ecommerce sites that come up repeatedly for the keywords.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 36, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-05-16T21:48:43.021Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207334013549214');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Complete' LIMIT 1), 'SEO Project', '    kara to give me plan to pare down what other seo company messed up  on their site 
    need to get rid of all the gift pages and consolodate 
    ex - redirect a bunch to honey gifts - consolodate keywrods 

https://docs.google.com/document/d/15LKcmE47zlUa6z3Qb1l1SWyRbrQMw7GEQTZz-F5-_Hk/edit?usp=sharing

We acknowledge that restricting the whole site is likely in order.

Basically, what we learned was that there is no clear page hierarchy.

Since this is such a big task, we decided that we should start by only working on honey gifts since holiday is soon and it seems that is where most of our canabalization is.

Can you please go to our site and navigate to honey gifts and sets and select honey gifts and kits. Search by price 10-50 notice how the page reorganizes itself.

We can do this by general catagory:
        Price
        Product Type
                Candles
                Honey
                Gifts, etc. all the different types of product that we have.
        Recipient
                For Her
                For Him
                For Foodies
                For Corporate
        Occasion
                Milestones
                Holidays
                Parties
                Travel

We would alias all pages that we’ve created for each of these things to the top level “honey gifts+kits” page

We would get rid of “category" because it’s a reflection of the main navigation and was simply fluff to add pages to the site by the previous agency.

Emily is sharing her claude work, look for a google invite on my sheet (she is not done yet) Please just focus on the gifts section for now.

But bear in mind that we need your blessing on this and that its not just the gift section that needs work.', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 37, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-27T18:39:16.564Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1211165196167766');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'Complete' LIMIT 1), 'Clean up old data scrape email list ', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 38, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-06-16T20:55:55.812Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1210552603639094');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'Business in Position to sell', '    Objective: Business in a position to be sold at a profit
    Key Results:
    Operational costs at or below our target
    MER of XX% or better
    A marketing and Operations team is in place to run the business with minimal input from ownership
', NULL, NULL, 39, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T00:42:23.103Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206596666575227');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'Creative folder', 'Emily / Kara to send to me
https://www.dropbox.com/scl/fo/0mqso8kyvlzeebzji5wxi/h?rlkey=8g78407u13zuvjz91s36d3goq&e=1&dl=0', NULL, NULL, 40, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T22:40:40.389Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206602955480890');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'New Marketing Channels ', 'Move into new marketing channels AffiliatesSocial Media Influencers

    Objective: New Marketing Channels Identified and plan to execute in place
    Key Results:
    Channels identified and ranked from best to worst opportunity
    Plan in place to launch each channel
    Team in place to execute the channel
', NULL, NULL, 41, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-14T00:41:27.975Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206596666575225');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'How to push more bundles', '', NULL, NULL, 42, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-16T23:33:03.609Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207826409719976');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'GOALS - 4 x Google Ads | 2x FB Ads ', '    Make business profitable
    Sell business 
    $1k retail / B2C sales per day = $365k.yr
    $500 wholesale B2B sales per day  = $182k/yr
', NULL, NULL, 43, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-02-22T00:37:04.342Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206662079844441');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'put “Featured in” higher up on the page ', '', NULL, NULL, 44, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-10T21:45:57.112Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207781392764940');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'IDEA - Free Sample pack of sample sizes for B2B clients or a single sample for B2C ', '', NULL, NULL, 45, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-03-14T04:14:44.628Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1206837286796716');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'IDEA - Add Lucky ORange to improve CVR', '', NULL, NULL, 46, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-04-10T23:53:21.247Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207050021580018');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1206550568079069'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1206550568079069') AND name = 'IDEAS' LIMIT 1), 'IDEA - YouTube - Blind honey tastings US vs Them ', '', NULL, NULL, 47, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2024-07-17T23:24:24.864Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1206550568079069/task/1207837564440621');

-- Its Only Natural (17 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Its Only Natural', 'yellow-green', '1211106769340557');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211106769340557'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211106769340557'), id FROM people WHERE email = 'ted@itsonlynaturalgifts.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211106769340557'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211106769340557'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), 'To do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), 'Affilaites', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), 'Influencers', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), 'Paid Ads', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), 'On Hold / Needs Feedback', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'To do' LIMIT 1), 'List of top sellers', 'Here are a variety of gifts in price and style for the holiday

 

Seasons Greetings: https://itsonlynaturalgifts.com/collections/holidays/products/seasons-greetings-gift-basket
Big Christmas Hug Holiday Pine Edition: https://itsonlynaturalgifts.com/collections/holidays/products/big-christmas-hug-holiday-gift-basket-pine-edition
Grand Luxury Holiday African Market Basket: https://itsonlynaturalgifts.com/collections/holidays/products/grand-luxury-holiday-gift-basket
Charcuterie Essentials Holiday Basket: https://itsonlynaturalgifts.com/collections/holidays/products/charcuterie-essentials-gift-basket
Deluxe Eucalyptus Comfort:https://itsonlynaturalgifts.com/collections/holidays/products/eucalyptus-comfort-gift-basket
Christmas Favorites Basket: https://itsonlynaturalgifts.com/collections/holidays/products/christmas-favorites-holiday-gift-basket
Light the Menorah: https://itsonlynaturalgifts.com/collections/holidays/products/light-the-menorah-hanukkah-gift-basket
Big Colorado Hug Winter Edition:https://itsonlynaturalgifts.com/collections/colorado-gift-baskets/products/big-colorado-hug-winter-edition-gift-basket
Sweet and Savory: https://itsonlynaturalgifts.com/collections/holidays/products/sweet-and-savory-gift-basket
Cozy Up Holiday: https://itsonlynaturalgifts.com/collections/holidays/products/cozy-up-holiday-gift-basket
Everything Nice Holiday: https://itsonlynaturalgifts.com/collections/holidays/products/everything-nice-holiday-gift-basket
Holiday De Stress: https://itsonlynaturalgifts.com/collections/holidays/products/holiday-de-stress-gift-basket
Holiday Bouquet: https://itsonlynaturalgifts.com/collections/holidays/products/holiday-bouquet-gift-basket
Big Santa Hug: https://itsonlynaturalgifts.com/collections/holidays/products/big-santa-hug-holiday-gift-basket
Christmas Folk Flower: https://itsonlynaturalgifts.com/collections/holidays/products/christmas-folk-flower-h
oliday-gift-basket', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-08T01:16:44.534Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1210054226074272');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'To do' LIMIT 1), 'Meeting Notes', '', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-16T20:10:32.053Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1213694176591339');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'INFO', 'Affilaite Strategy Doc
https://docs.google.com/document/d/1cOGIonKc3oP_W5LyiL7ZGqGGcCTGjtFCPw1cCLoUcVA/edit?tab=t.0#heading=h.lbllalupdg0', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-22T20:08:01.211Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211419326021152');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'Vetting and approving affilaites - Coupon Sites OK - ItsOnlyNatual Gift basket ', '', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-17T23:29:38.510Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211389913522029');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'Coupons being using by affilaites', '1FREESHIP
WELCOMEBACK
SPREADKINDNESS
SHIPORTREAT
EXPIREDCART
WELCOMENEWSHOPPER', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-27T17:33:55.662Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211759164923504');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'Invite new publishers - AWIN', 'Where to search for opportunities 
AWIN > Publishers > Search - Opportunities Marketplace 
AWIN > Publishers > Search - Partner Directory 


Keywords to Use in Publisher Search (AWIN)

Gift-related keywords
    gift baskets
    healthy gifts
    wellness gifts
    spa gift baskets
    birthday gifts
    holiday gifts
    corporate gifts
    sustainable gifts
    organic gifts
Lifestyle / Niche keywords
    organic living
    vegan lifestyle
    eco-friendly
    sustainable living
    wellness bloggers
    healthy lifestyle
    mindfulness
    self-care
Publisher type keywords
    lifestyle blog
    health & wellness blog
    green/eco publishers
    shopping
    product reviews
    coupon / deal site


Invitation Blurbs 

General / Lifestyle Affiliates

> Join ItsOnlyNaturalGifts.com on AWIN! We create organic & wellness-focused gift baskets—perfect for healthy living, holidays, & corporate gifting. Strong commissions + high conversion potential. Let’s partner!

Coupon / Deal Sites

> Partner with ItsOnlyNaturalGifts.com on AWIN! Organic & wellness gift baskets for holidays, birthdays & corporate needs. Great commissions + products that resonate with health-conscious audiences.

Corporate / B2B Focus

> Join ItsOnlyNaturalGifts.com’s AWIN program! Customizable organic & wellness gift baskets for clients, employees & events. High AOV, strong gifting demand, and competitive commissions.



How to do this
https://www.loom.com/share/58eb7f99fe8c4bd9a5e8f0e4e684b38e?sid=47612dad-8708-4fc7-8512-66b3fcc96c42', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-22T20:03:45.386Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211419326021145');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'Plan monthly emails ', 'Affilaite promotion Strategy
https://docs.google.com/document/d/1cOGIonKc3oP_W5LyiL7ZGqGGcCTGjtFCPw1cCLoUcVA/edit?usp=sharing', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-17T19:54:27.873Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211385330513478');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Affilaites' LIMIT 1), 'Promos till EOY', 'Here are our promos through year end:
 
October 19th - 30th
    Code: SHIPORTREAT = free shipping over $130
    Announcement Bar: 
        Fall Savings! Free Shipping on $130+ with code SHIPORTREAT
 
November 16th - 30th
    Code: GIVETHANKS = 10% off any order, no minimum purchase required
    Announcement Bar:
        Thanksgiving Savings! 10% OFF with code GIVETHANKS
 
December 1st - 7th
    Code: SHIPJOY150 = free shipping on orders over $150
    Announcement Bar:
        Spread Holiday Joy! Free Shipping on $150+ with code SHIPJOY150
', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-10-06T21:27:15.565Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1219223126642467');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Influencers' LIMIT 1), 'Partnerships with location-centric influencers', '    people who we would custom-make a gift for
    can get a list together
        Influencers who are locations in places like
        nashville
        nola
        SF
        Chicago
        Austin
            they have a Texas collection
        Collorado
', NULL, NULL, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-08-21T22:35:38.969Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211118541398310');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Paid Ads' LIMIT 1), 'Meta Ads for IONG', 'Creative Assets (some older and no on site any longer)
https://www.dropbox.com/scl/fo/07aqy8gxb25b84axa3cvx/AAZV8aV3eJltq0JUK7Poe7I?rlkey=5m10y229nmm7na8cqoygvxcs9&dl=0


https://docs.google.com/document/d/10iPz0tuODYrbLHd4Hdykdd4kHlJavCEDJpSd879KVew/edit?usp=sharing', NULL, NULL, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-31T17:43:56.749Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211797551693530');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Paid Ads' LIMIT 1), 'Google Ad''s - IONG', 'this is a new client we are managing. 

They are in a similar industry as us. 

My intial plan is to;

    Launch new brand camaopgin
    Kill current Brand campaign
    Get rid of their junk search campagin
    Research top converting keywords and launch a new search campaign 
    launch a new catch-all shopping campagin 
    move them to a feeder strategy with a higher ROAS Pmax 400% for warm traffic and a lower ROAS strategy for the Shoping catch all @ 300%
    We need to break out their products into price tiers and them once we have data we can break up the products int seperate camapgins so we can dial them in better

please audit them and let me know your thoughts
cheers! ', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-10T19:55:47.170Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211319034700401');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'Paid Ads' LIMIT 1), 'Bing Ads for - Its Only Natural', '', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-15T16:54:16.079Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211652332870991');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Feedback on getting TikTok Shop setup', '', (SELECT id FROM people WHERE email = 'ted@itsonlynaturalgifts.com'), NULL, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-29T14:07:29.039Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211495686002919');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'TikTok Shop', '', NULL, NULL, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-24T21:38:58.509Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211745318907453');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'TikTok Affilaites', '
    Set a script for reaching out 
    $150 to spend on a custom basket
    Have them walk through the process 
    Send themselves a gift
    review gift 
    Post the content with us tagged in it 
    We use content in ads 
Outreach sheet 
https://docs.google.com/spreadsheets/d/1MsvzPHIBGklqiM4UyTcN7yJbtWScVL9Vc1aM3U3O1NQ/edit?usp=sharing', NULL, NULL, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-28T16:51:34.051Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211764257942454');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'TikTok Ads', 'here we will manage all things tiktok ads ', NULL, NULL, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-10-28T16:51:38.644Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211764257942456');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211106769340557'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211106769340557') AND name = 'On Hold / Needs Feedback' LIMIT 1), 'Review TikTok Tools ', 'CRM to connect with creators 
https://www.euka.ai/pricing

Analytics  data tool 
https://www.kalodata.com/', NULL, NULL, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-09-23T16:54:40.866Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211106769340557/task/1211435230429641');

-- Yecommerce — Cold Outreach System (Baby Steps) (16 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Yecommerce — Cold Outreach System (Baby Steps)', 'none', '1213749332651821');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1213749332651821'), id FROM people WHERE email = 'huzaifafreelance28@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1213749332651821'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), 'Week 1 — Tool Setup', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), 'Week 1–2 — First Lead Batch (Manual)', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), 'Week 2–3 — Daily Rhythm', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), 'Week 3–4 — Review and Clay Upgrade', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'To Do' LIMIT 1), 'Cold Outreach - Yecommerce', 'Yecommerce Lead Tracker
https://docs.google.com/spreadsheets/d/15DC3qbKIJc4ozSPJNm-o6bCw8WL54-Fy/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

Yecommerce ICP 
https://docs.google.com/document/d/1aWilu7dXV6_PEa2p8F-r2LhBR9axFm2wprO_8rPby0c/edit?usp=sharing

LinkedIn 
https://www.linkedin.com/in/james-grasty-8b511748/

Inital Outreach Templats 
https://docs.google.com/document/d/1NhqkEw-7K8FmfQrFGdyq3ResNTjEjkvah6BN3aOMAYQ/edit?usp=sharing', (SELECT id FROM people WHERE email = 'huzaifafreelance28@gmail.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-01T20:21:25.556Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1205763038576101/task/1214459070137852');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1 — Tool Setup' LIMIT 1), 'Manually Lead Finding Methods ', '', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T21:49:05.576Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213750194284010');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1 — Tool Setup' LIMIT 1), 'Meta Ads Leads', 'https://docs.google.com/spreadsheets/d/1YK7Cyr1_VNNE1WmpVwwssRD008QKOoOCyvPB3xfJ5Dw/edit?usp=sharing', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-02T04:34:02.494Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213904856649293');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1–2 — First Lead Batch (Manual)' LIMIT 1), 'VA task: BuiltWith vet all 50 domains (Day 1 batch)', 'Sheet to work in 
https://docs.google.com/spreadsheets/d/15DC3qbKIJc4ozSPJNm-o6bCw8WL54-Fy/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true

Tools to use
Built With Chrome Extension 

How to do this

https://docs.google.com/spreadsheets/d/15DC3qbKIJc4ozSPJNm-o6bCw8WL54-Fy/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true
    Visit the site
    Click the BuiltWith extension
    record:
        Platform (Shopify Y/N)
        Email tool (Klaviyo/Mailchimp/none)
        Facebook Pixel (Y/N)
        Google Tag (Y/N)
        Loyalty app (Y/N)
        Enter results in the Sheet. 
        Flag Green/Yellow/Red.
', NULL, '2026-03-25'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.621Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749468491519');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1–2 — First Lead Batch (Manual)' LIMIT 1), 'VA task: Meta Ad Library check for all Green leads', 'For each Green lead in the Sheet: go to facebook.com/ads/library, search brand name, record Active Ads count (0, 1-3, 3+). Update the ''Meta Ads Running'' column. Re-score if needed.', NULL, '2026-03-26'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.613Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749332419338');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1–2 — First Lead Batch (Manual)' LIMIT 1), 'James: Record 10 Looms from the first Green list', 'Open the Sheet, filter to Green leads, pick the top 10. For each: open their site, review VA observation note, record 60-second Loom using the playbook script. Paste Loom link into the Sheet.', NULL, '2026-03-27'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.620Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749310516231');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1–2 — First Lead Batch (Manual)' LIMIT 1), 'Send first 10 outreach emails + LinkedIn connections', 'For each of the 10 Looms: send the cold email template (from Playbook) with the Loom link embedded. Simultaneously send LinkedIn connection request with the note template. Log send date in Sheet.', NULL, '2026-03-27'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.617Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749310518096');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 1–2 — First Lead Batch (Manual)' LIMIT 1), 'Meta Ads Leads ', '', NULL, NULL, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-02T04:33:53.820Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213904856649291');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 2–3 — Daily Rhythm' LIMIT 1), 'Establish daily 90-min outreach block (recurring)', 'Block 90 minutes every weekday morning for outreach. Split: 15 mins VA hands over vetted list → 30 mins record Looms → 15 mins send emails + LinkedIn → 15 mins process replies and follow-ups. This is non-negotiable protected time.', NULL, '2026-04-10'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.604Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213763533080385');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 2–3 — Daily Rhythm' LIMIT 1), 'Run Day 3 follow-up sequence on first batch', 'Check Loom view data for the first 10 outreach contacts. For anyone who viewed 50%+ but has not replied: send the Day 3 bump email. For 0% views: send LinkedIn DM. Log follow-up date and action in Sheet.', NULL, '2026-04-01'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.607Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749174063236');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 2–3 — Daily Rhythm' LIMIT 1), 'VA: Pull and vet second batch of 50 leads', 'Repeat the Apollo export + BuiltWith + Meta Ad Library workflow for a fresh batch of 50 leads. Aim to always have 30+ vetted Green leads queued ahead of Loom recording days.', NULL, '2026-04-03'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.626Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749173935034');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 2–3 — Daily Rhythm' LIMIT 1), 'Run Day 7 final follow-up on first batch', 'Send the Day 7 value-add email to all non-responders from the first batch. Include a relevant result or case study. Log outcome. Move non-responders to ''Archived'' in the Sheet after Day 7.', NULL, '2026-04-04'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.620Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749174079627');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 3–4 — Review and Clay Upgrade' LIMIT 1), 'Week 2 performance review — check reply rate and Loom views', 'Pull metrics from the Sheet: Total sent, Loom view rate (%), Reply rate (%), Calls booked. Compare against targets: 40% view rate, 5% reply rate. Identify which lead sources and observation angles performed best.', NULL, '2026-04-07'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.602Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749468090051');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 3–4 — Review and Clay Upgrade' LIMIT 1), 'Refine ICP filters based on early data', 'Review which Green leads actually replied. Update Apollo search filters and BuiltWith vetting criteria to favour the profiles that converted. Kill any lead source or angle that showed 0% engagement.', NULL, '2026-04-09'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.649Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749332633892');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 3–4 — Review and Clay Upgrade' LIMIT 1), 'Set up Clay enrichment workflow (BuiltWith + AI prompt)', 'In Clay: import Apollo CSV. Add BuiltWith enrichment column. Add Claygent AI column with prompt: ''Visit this website. Does it have: email pop-up (Y/N), Facebook Pixel (Y/N), Klaviyo (Y/N), active blog (Y/N), agency footer (Y/N)? Return as JSON.'' Map output to Sheet columns.', NULL, '2026-04-14'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.627Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213763533074839');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213749332651821'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213749332651821') AND name = 'Week 3–4 — Review and Clay Upgrade' LIMIT 1), 'Decision point: scale up or refine?', 'If reply rate is above 5% after 100 outreach sends — scale to 20/day using Clay automation. If below 5% — revisit the Loom angle and email template before scaling. Document decision and rationale.', NULL, '2026-04-14'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-03-20T19:33:53.603Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213749332651821/task/1213749317226652');

-- Festive Gal / Bake it Fancy (5 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Festive Gal / Bake it Fancy', 'pink', '1213918204645540');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1213918204645540'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1213918204645540'), id FROM people WHERE email = 'pratik.shopifydev@gmail.com';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1213918204645540'), id FROM people WHERE email = 'tumachekd@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), 'To Do', 1);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213918204645540') AND name = 'To Do' LIMIT 1), 'Marketplace connect to Amazon', '', (SELECT id FROM people WHERE email = 'pratik.shopifydev@gmail.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-21T18:25:55.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213918204645540/task/1217740396819467');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213918204645540') AND name = 'To Do' LIMIT 1), 'Festive Gal Gogle Ads', 'https://app.asana.com/1/1200828512126939/profile/1211431490462349 This is a new, smaller client with whom I am acquainted. 
We are setting up ads, getting them going, and potentially handing off in a few months.

Looks to keep it simple with a feed strategy and brand camapgin. 
When ready, we can then launch the search. 

Let me know if you can get the basics set up in here, please, and if you have any questions ', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-03T17:35:05.200Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213918204645540/task/1213933108142604');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213918204645540') AND name = 'To Do' LIMIT 1), 'Festive Gal Bing Ads', '', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-03T17:35:22.844Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213918204645540/task/1213933108142606');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213918204645540') AND name = 'To Do' LIMIT 1), 'Bake it Fancy Google ads', '', (SELECT id FROM people WHERE email = 'tumachekd@gmail.com'), NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-03T17:35:30.215Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213918204645540/task/1213933108142608');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1213918204645540'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1213918204645540') AND name = 'To Do' LIMIT 1), 'Bake Bake it Fancy Bing Ads ', '', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-03T17:35:37.570Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1213918204645540/task/1213933108142610');

-- The Cellar — Ventura Launch (25 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('The Cellar — Ventura Launch', 'none', '1214019453617552');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214019453617552'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), '🏛️ Legal & Licensing', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), '🏢 Space & Buildout', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), '👤 Key Hire — Head of Discovery & Tastings', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), '🛒 Inventory, POS & Online Integration', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), '🚀 Launch & Brand/Distributor Partnerships', 6);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = 'To Do' LIMIT 1), 'Cellar Ventrura B Plan', 'Business Plan 
https://docs.google.com/document/d/1jt8JysdulHr2eRAnlB4d6pMeSrj6jswy/edit?usp=sharing&ouid=101863008106559543430&rtpof=true&sd=true', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-10T15:31:19.191Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214020456852110');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'Confirm Type 14 approval status with ABC (Go-To Gifting)', 'Check current status of Type 14 public warehouse license application for Go-To Gifting LLC. Do not advance to lease signing or LLC formation until this clears.', NULL, '2026-04-17'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.627Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214019453623228');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'Hire ABC license broker for Type 21 transfer', 'Engage a California ABC license broker to handle the person-to-person AND premises-to-premises Type 21 transfer from Go-To Gifting to the new retail LLC. Get referrals from the Ventura ABC district office. Budget $3,000–$6,000.', NULL, '2026-04-28'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.620Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054591993');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'Form new retail LLC (e.g., Booze Finders Retail LLC or Cellar Ventura LLC)', 'File new California LLC with Secretary of State. Draft operating agreement. Keep fully separate from Go-To Gifting LLC for liability, licensing, and potential future sale of either business. Budget $500–$1,000. CA processing: 2–4 weeks.', NULL, '2026-04-30'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.619Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054632111');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'Pre-screen all candidate retail spaces with ABC before signing lease', 'Verify every target address is outside 600ft of schools, playgrounds, and nonprofit youth facilities. Also confirm not within 100ft of residences. Do NOT sign a lease on any space that has not been pre-cleared by ABC or your broker.', NULL, '2026-05-09'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.625Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054615574');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'File Type 21 transfer application to new LLC + new premises', 'Work with ABC broker to file simultaneous person-to-person and premises-to-premises transfer. Budget $2,000–$4,000 in state fees. Average ABC processing time: 75 days. Do not open retail operations until permanent license is issued.', NULL, '2026-05-26'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.624Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214012560815521');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏛️ Legal & Licensing' LIMIT 1), 'Apply for Type 86 Instructional Tasting license at retail premises', 'File Type 86 application once Type 21 is approved at the new location. This license authorizes paid tastings and structured tasting events — the foundation of the brand/distributor event program. Fee: ~$200–$400/year.', NULL, '2026-08-01'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.635Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214019453607870');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏢 Space & Buildout' LIMIT 1), 'Engage a commercial RE broker who knows the Main St Ventura corridor', 'Find a broker familiar with the 93001 zip. Target blocks between California St and Oak St on Main for highest foot traffic. Do this now so you''re ready to move within 30 days of Type 14 approval.', NULL, '2026-04-21'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.595Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054581952');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏢 Space & Buildout' LIMIT 1), 'Identify and shortlist 3–5 candidate retail spaces (1,200–1,600 sq ft)', 'Target NNN lease at ~$2.00–$2.45/sq ft. All-in occupancy cost should be under $4,500/mo. Prioritize spaces with rear parking, natural light, and enough depth for a tasting bar. Avoid basement or second-floor locations.', NULL, '2026-05-09'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.629Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214019453588822');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏢 Space & Buildout' LIMIT 1), 'Sign lease on approved space', 'Only after ABC pre-clearance on address. Negotiate TI (tenant improvement) allowance — ask for $15–25/sq ft toward buildout. Budget 2 months deposit ($7,000–$8,500). Try to negotiate free rent during buildout period.', NULL, '2026-05-30'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.644Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214012560858249');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏢 Space & Buildout' LIMIT 1), 'Design and plan store layout (tasting bar, shelving, coolers, POS)', 'Prioritize: (1) a 4–6 seat tasting bar as the centerpiece, (2) temperature-controlled cooler wall for beer/wine, (3) spirits shelving with discovery signage by region, (4) POS station near exit. Hire a local designer or use a retail design consultant. Budget $35K–$65K for full buildout.', NULL, '2026-06-06'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.775Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214019453623292');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🏢 Space & Buildout' LIMIT 1), 'Complete buildout and pass all inspections', 'Coordinate contractor, city permits, ADA compliance, ABC premises diagram (ABC-257). Ensure premises diagram matches exactly what is filed with ABC — any changes after filing require notification. Target completion 2 weeks before planned open date.', NULL, '2026-07-31'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.644Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054663181');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '👤 Key Hire — Head of Discovery & Tastings' LIMIT 1), 'Define role: Director of Discovery / Head of Retail & Tastings', 'Write job description. Must-haves: WSET Level 2+ or CSW or Certified Sommelier, existing distributor/brand rep relationships, event hosting experience, retail floor management. Compensation: $55K–$75K base + equity or profit share in new retail LLC (10–20% for true co-founder).', NULL, '2026-04-21'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.619Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214019453592525');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '👤 Key Hire — Head of Discovery & Tastings' LIMIT 1), 'Post role on SevenFifty Daily (industry-specific job board)', 'SevenFifty Daily is the alcohol industry''s top hiring platform. Post quietly before you''re public. Also post in Court of Master Sommeliers alumni networks and local sommelier/bartender Facebook groups. Target candidates from Hi-Time Wine, Total Wine buyers, or burned-out distributor reps.', NULL, '2026-04-28'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.614Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214016958443915');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '👤 Key Hire — Head of Discovery & Tastings' LIMIT 1), 'Interview candidates and make offer', 'Focus on distributor relationships and event energy — you can teach product knowledge, you can''t teach hustle or charisma. If offering equity, have your attorney draft a clear vesting schedule (suggest 3-year vest, 1-year cliff) in the new LLC operating agreement.', NULL, '2026-06-15'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.637Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214009054609957');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '👤 Key Hire — Head of Discovery & Tastings' LIMIT 1), 'Key hire begins outreach to local/regional brands and distributors', 'Once onboard, key hire should immediately begin building the brand/distributor event calendar and sourcing opening inventory relationships. Target 10–15 opening brand relationships with at least 3 committed to hosting tasting events in the first 60 days of opening.', NULL, '2026-07-31'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.616Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214012560854811');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🛒 Inventory, POS & Online Integration' LIMIT 1), 'Define opening SKU list (~300–500 products, curated)', 'Resist the urge to go wide. Curate 300–500 SKUs max with heavy weighting on Ventura County, SoCal, and CA producers. Every SKU should have a story. Categories: local craft beer, CA wine by region, CA/SoCal spirits, a few world-class imports for credibility.', NULL, '2026-07-01'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.640Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214016958544634');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🛒 Inventory, POS & Online Integration' LIMIT 1), 'Set up POS system with Shopify sync (BoozeFinderz integration)', 'Use existing Shopify infrastructure. Ensure in-store POS inventory syncs in real time with BoozeFinderz online store. Products sold in-store should decrement online inventory and vice versa. Budget $1,500–$3,500 for setup/integration.', NULL, '2026-07-15'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.617Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1213999265320307');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🛒 Inventory, POS & Online Integration' LIMIT 1), 'Set up Ship Compliant for DTC order compliance', 'Integrate Ship Compliant for age verification, state compliance routing, and tax automation on all online orders shipped from the new retail entity. Budget $200–$500/month. Do not ship a single DTC order without this in place.', NULL, '2026-07-15'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.623Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214016958395177');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🛒 Inventory, POS & Online Integration' LIMIT 1), 'Source and order opening inventory', 'Place opening orders through approved CA distributors (Southern Glazer''s, Republic National, Young''s Market, and local indie distributors). Budget $25,000–$45,000 for opening inventory. Prioritize fast-turning items and brands with tasting event commitments.', NULL, '2026-07-31'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.616Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1213999265347058');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🚀 Launch & Brand/Distributor Partnerships' LIMIT 1), 'Build opening event calendar — 3 brand tastings in first 60 days', 'Commit at least 3 brand or distributor tasting events before opening day. These drive initial traffic, content, and credibility. Lean on Bev Connect 3PL clients first — they already have a relationship with you and an incentive to support the store.', NULL, '2026-08-01'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.634Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1213999265357402');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🚀 Launch & Brand/Distributor Partnerships' LIMIT 1), 'Soft open and gather feedback (2-week period)', 'Invite select friends, brand partners, local press, and food/beverage community for a soft open. Test the POS, tasting bar service, and customer flow. Collect structured feedback on layout, selection, and experience before hard launch.', NULL, '2026-08-14'::date, 22, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.635Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1213999265336979');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🚀 Launch & Brand/Distributor Partnerships' LIMIT 1), 'Grand opening event + press outreach', 'Host a ticketed grand opening tasting event (Type 86 in place by now). Invite Ventura Reporter, VC Star, local food bloggers, and Instagram influencers in the food/bev space. Issue press release positioning the store as a discovery destination, not a liquor store.', NULL, '2026-08-31'::date, 23, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.631Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214012560858183');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🚀 Launch & Brand/Distributor Partnerships' LIMIT 1), 'Launch subscription club (BoozeFinderz Discovery Box)', 'Launch tiered subscription: Beer-Only, Wine-Only, Spirits-Only, or Mixed Explorer. Price at $65–$150/box monthly or quarterly. Target 200 subscribers by end of Year 1. Use grand opening event as primary signup moment. Fulfill via Go-To Gifting warehouse (Type 14).', NULL, '2026-09-15'::date, 24, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.820Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1214016958562261');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214019453617552'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214019453617552') AND name = '🚀 Launch & Brand/Distributor Partnerships' LIMIT 1), 'Onboard first 3 brand 3PL clients for Go-To Gifting / Bev Connect DTC fulfillment', 'Convert tasting event brand partners into Bev Connect 3PL clients. Pitch: ''We sell your product in the store, host your tastings, and fulfill your DTC orders — one partner for your CA retail and fulfillment strategy.'' Target 3 signed clients within 90 days of opening.', NULL, '2026-11-01'::date, 25, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-09T23:06:36.616Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214019453617552/task/1213999265319244');

-- CardNear — App Build & Launch (21 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('CardNear — App Build & Launch', 'none', '1214023280738029');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214023280738029'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), 'Phase 1 · Discovery & Planning', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), 'Phase 2 · Design & Prototyping', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), 'Phase 3 · Core Development', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), 'Phase 4 · Testing & Beta', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), 'Phase 5 · Launch & Growth', 5);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 1 · Discovery & Planning' LIMIT 1), 'Define MVP feature scope', 'Lock in the exact features for v1.0: card storage, location alerts, Apple/Google Wallet passthrough. Cut anything that''s post-launch.', NULL, '2026-04-18'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.039Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818126682');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 1 · Discovery & Planning' LIMIT 1), 'Competitive research — Stocard, Gyft, Apple/Google Wallet', 'Analyze the top 5 existing gift card and loyalty wallet apps. Document gaps CardNear fills, especially the location + booking detection angle.', NULL, '2026-04-20'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.081Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023280741522');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 1 · Discovery & Planning' LIMIT 1), 'Choose tech stack (React Native vs Swift/Kotlin)', 'Decision: React Native (Expo) for speed-to-market vs native Swift/Kotlin for deeper OS integration (location, Wallet APIs). Recommend React Native + Expo for MVP.', NULL, '2026-04-22'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.099Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023280718167');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 1 · Discovery & Planning' LIMIT 1), 'Outline monetization model', 'Options: freemium (5 free cards), premium subscription ($2.99/mo), affiliate/referral commissions from retailers, or white-label B2B. Pick one for launch.', NULL, '2026-04-25'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.242Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214026590140217');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 1 · Discovery & Planning' LIMIT 1), 'Register entity & App Store developer accounts', 'Set up Apple Developer Program ($99/yr) and Google Play Console ($25 one-time). Register CardNear LLC or use existing Go-To Gifting entity.', NULL, '2026-04-21'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.112Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276742423');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 2 · Design & Prototyping' LIMIT 1), 'Full UX wireframes — all screens', 'Wire every screen: onboarding, wallet home, card detail, add card (manual + scan), nearby map, alerts/notifications, settings. Use Figma.', NULL, '2026-05-02'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.166Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818137759');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 2 · Design & Prototyping' LIMIT 1), 'Visual design & brand system', 'Finalize logo, color palette, typography, and icon set. Build a Figma component library. Reference the dark-luxury aesthetic from the prototype.', NULL, '2026-05-12'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.031Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276737669');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 2 · Design & Prototyping' LIMIT 1), 'Card scanning UX — barcode & QR research', 'Research expo-barcode-scanner or ML Kit for scanning physical gift cards. Determine if OCR for balance lookup is feasible at MVP stage.', NULL, '2026-05-05'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.088Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818145389');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 2 · Design & Prototyping' LIMIT 1), 'Run 5-person user testing on prototype', 'Share the React prototype with 5 target users (gift card buyers). Gather feedback on the core loop: add card → get nearby alert → use card.', NULL, '2026-05-14'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.085Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023280732691');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 3 · Core Development' LIMIT 1), 'Build card storage + manual add flow', 'Users can manually add a gift card (brand, balance, barcode number, logo). Data stored locally with AsyncStorage + optional cloud sync via Supabase.', NULL, '2026-05-26'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.027Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276742100');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 3 · Core Development' LIMIT 1), 'Implement location-based proximity alerts', 'Use Expo Location + geofencing. When user enters ~0.5mi radius of a card''s store, fire a local push notification. Handle background location permissions carefully.', NULL, '2026-06-06'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.720Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818126201');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 3 · Core Development' LIMIT 1), 'Apple Wallet & Google Wallet pass generation', 'Generate .pkpass files (Apple PassKit) and Google Wallet JWT passes for stored cards. Allow one-tap Add to Wallet. Requires Apple cert + Google API setup.', NULL, '2026-06-13'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.724Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818149158');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 3 · Core Development' LIMIT 1), 'Calendar & email scanning for booking detection', 'Request calendar read permission. Parse calendar events for restaurant/retail names matching stored cards. Stretch: Gmail API scan for reservation confirmation emails.', NULL, '2026-06-20'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.752Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023280713350');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 3 · Core Development' LIMIT 1), 'Barcode scanning — add card via camera', 'Integrate camera-based barcode/QR scanning so users can scan physical cards instead of typing. Auto-populate brand name where recognizable.', NULL, '2026-06-22'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.718Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276716564');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 4 · Testing & Beta' LIMIT 1), 'Internal QA — all core flows', 'Test every flow on iOS and Android: add card, location alert trigger, wallet pass generation, booking detection, notification settings. Document and fix all P0/P1 bugs.', NULL, '2026-07-04'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.077Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818149350');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 4 · Testing & Beta' LIMIT 1), 'TestFlight + Play Store closed beta (50 users)', 'Recruit 50 beta testers via personal network and gift-giving communities. Collect structured feedback via in-app survey. Target: gift givers, deal hunters, frequent shoppers.', NULL, '2026-07-25'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.720Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214028818094977');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 4 · Testing & Beta' LIMIT 1), 'Iterate on beta feedback — top 10 fixes', 'Triage beta feedback, prioritize top 10 issues/requests, ship fixes before public launch. Focus on notification reliability and wallet pass compatibility.', NULL, '2026-08-05'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.750Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023280741745');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 5 · Launch & Growth' LIMIT 1), 'App Store & Play Store submission', 'Prepare all store assets: screenshots, preview video, description, keywords. Submit for review. Apple review ~2-3 days, Google ~1-3 days.', NULL, '2026-08-15'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.724Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214023276940301');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 5 · Launch & Growth' LIMIT 1), 'Launch day marketing push', 'Post on Product Hunt, Reddit (r/personalfinance, r/deals), TikTok demo video, email list. Leverage BroBasket / Go-To Gifting customer base for initial installs.', NULL, '2026-08-18'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.767Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276748728');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 5 · Launch & Growth' LIMIT 1), 'SEO landing page — cardnear.com', 'Build a simple landing page targeting ''gift card reminder app'', ''gift card wallet app'' keywords. App store badges, feature screenshots, email capture for waitlist.', NULL, '2026-08-10'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:48.749Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276750177');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023280738029'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023280738029') AND name = 'Phase 5 · Launch & Growth' LIMIT 1), 'Post-launch: retailer partnership outreach', 'Reach out to mid-size retail brands to white-label or co-brand CardNear as a customer retention tool. Start with 5 outreach emails to brands in the gift/retail space.', NULL, '2026-09-05'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:08:49.000Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023280738029/task/1214024276748662');

-- Quail's Travel Log — Web App Build (21 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Quail''s Travel Log — Web App Build', 'none', '1214023281081861');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214023281081861'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 1 · Setup & Deploy', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 2 · User Accounts (Supabase Auth)', 2);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 3 · Database & Data Persistence', 3);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 4 · Kids Profiles & Map View', 4);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 5 · Social & Monetization', 5);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), 'Phase 6 · Launch & Marketing', 6);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 1 · Setup & Deploy' LIMIT 1), 'Install Claude Code & scaffold Vite + React app', 'Run: npm install -g @anthropic-ai/claude-code, then use Prompt 1 to create the Vite React project with Tailwind CSS (PostCSS approach).', NULL, '2026-04-13'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.136Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277088983');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 1 · Setup & Deploy' LIMIT 1), 'Add TravelLog component & confirm it runs locally', 'Use Prompt 2 to add src/components/TravelLog.jsx with the full code. Update App.jsx. Run npm run dev and confirm no errors with Prompt 3.', NULL, '2026-04-14'::date, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.139Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214028818465696');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 1 · Setup & Deploy' LIMIT 1), 'Init git repo and push to GitHub', 'Use Prompt 4 to initialize git, add .gitignore, and make first commit. Create a GitHub repo and push.', NULL, '2026-04-14'::date, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.130Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214026590471782');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 1 · Setup & Deploy' LIMIT 1), 'Deploy to Vercel — get live URL', 'Use Prompt 5. Install Vercel CLI and run ''vercel'' in project directory. Note the live URL (e.g. quails-travel-log.vercel.app).', NULL, '2026-04-15'::date, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.145Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214055551295612');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 1 · Setup & Deploy' LIMIT 1), 'Buy domain name (e.g. quailstravellog.com)', 'Check availability on Namecheap or Google Domains. Budget ~$12/yr. Then use Prompt 13 in Claude Code to connect it to Vercel.', NULL, '2026-04-17'::date, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.117Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023281083603');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 2 · User Accounts (Supabase Auth)' LIMIT 1), 'Create Supabase project & copy API keys', 'Go to supabase.com, create a free account and new project. Copy Project URL and anon public key from Settings → API. Keep these safe.

https://supabase.com/dashboard/sign-in?returnTo=%2Forg%2Fovclrgwqmfdumtwqbbtk%2Fapps', NULL, '2026-04-17'::date, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.158Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277089048');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 2 · User Accounts (Supabase Auth)' LIMIT 1), 'Install Supabase SDK & set up client', 'Use Prompt 6 to install @supabase/supabase-js and create src/lib/supabase.js. Use Prompt 7 to create the .env.local file and fill in the API keys.', NULL, '2026-04-18'::date, 7, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.136Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277088919');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 2 · User Accounts (Supabase Auth)' LIMIT 1), 'Build AuthScreen component (sign up / sign in)', 'Use Prompt 8. Create src/components/AuthScreen.jsx with email/password fields, Sign Up and Sign In buttons, error handling, and matching dark green color scheme.', NULL, '2026-04-19'::date, 8, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.160Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214026590471850');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 2 · User Accounts (Supabase Auth)' LIMIT 1), 'Wrap app with auth gate + add Sign Out button', 'Use Prompt 9. Update App.jsx to check Supabase session on load. Show AuthScreen if logged out, TravelLog if logged in. Add Sign Out button in header.', NULL, '2026-04-20'::date, 9, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.132Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023281083699');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 3 · Database & Data Persistence' LIMIT 1), 'Run travel_entries SQL schema in Supabase', 'Open Supabase dashboard → SQL Editor. Paste and run the schema from the build guide: creates travel_entries table with user_id, category, data (jsonb), and Row Level Security policy.', NULL, '2026-04-20'::date, 10, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.125Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023277314279');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 3 · Database & Data Persistence' LIMIT 1), 'Replace window.storage with Supabase useStorage hook', 'Use Prompt 10. Rewrite the useStorage hook to fetch/upsert from Supabase travel_entries table scoped to the current user. Keep same API so nothing else breaks.', NULL, '2026-04-22'::date, 11, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.168Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023281056330');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 3 · Database & Data Persistence' LIMIT 1), 'Test data persistence across devices', 'Sign in on two different browsers/devices. Add entries on one, confirm they appear on the other. Verify data survives page refresh.', NULL, '2026-04-23'::date, 12, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.175Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277089176');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 4 · Kids Profiles & Map View' LIMIT 1), 'Add profiles table to Supabase', 'Create the profiles table via SQL: (id, user_id, name, avatar_emoji, is_child, created_at). This enables multi-profile support per account.', NULL, '2026-04-24'::date, 13, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.189Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214028818465824');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 4 · Kids Profiles & Map View' LIMIT 1), 'Build profile switcher with kids profile support', 'Use Prompt 11. Add profile switcher dropdown in header with ''+ Add Profile'' option. Scope all travel data to active profile_id. Add fun kid indicator when child profile is active.', NULL, '2026-04-27'::date, 14, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.225Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277088695');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 4 · Kids Profiles & Map View' LIMIT 1), 'Add map view to Want to Go tab', 'Use Prompt 12. Install react-leaflet + leaflet. Add location search field using free Nominatim geocoding API. Show map pins for wishlist items with lat/lng stored. Popup on pin click.', NULL, '2026-04-30'::date, 15, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.198Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023277315791');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 5 · Social & Monetization' LIMIT 1), 'Plan friend sharing feature', 'Decide: public profile pages (e.g. /user/quail) showing visited states map and stats, with optional privacy toggle. Use Supabase public read policies for shared profiles.', NULL, '2026-05-05'::date, 16, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.142Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277087146');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 5 · Social & Monetization' LIMIT 1), 'Build public profile / share page', 'Create a read-only profile view showing states map, park count, countries, and stats. Generate a shareable link. Add ''Share My Map'' button in the app header.', NULL, '2026-05-10'::date, 17, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.140Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214023281079559');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 5 · Social & Monetization' LIMIT 1), 'Set up Google AdSense', 'Apply for Google AdSense account (requires live site with real content). Once approved, add ad slots to the Travel Tips/blog section and sidebar. Keep ads non-intrusive.', NULL, '2026-05-15'::date, 18, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.144Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214028818463208');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 6 · Launch & Marketing' LIMIT 1), 'Write Quail''s Guide blog content in app', 'Expand the Travel Tips tab with the full blog content from the spreadsheet. Add categories for each trip type (nature, foodie, culture, etc.) with the notes she already wrote.', NULL, '2026-05-08'::date, 19, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.166Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214024277089112');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 6 · Launch & Marketing' LIMIT 1), 'Create social media accounts for the app', 'Set up Instagram and TikTok accounts for Quail''s Travel Log. Post content around the state map tracker, national parks checklist, and travel tips.', NULL, '2026-05-12'::date, 20, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.172Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214028818465760');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214023281081861'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214023281081861') AND name = 'Phase 6 · Launch & Marketing' LIMIT 1), 'Soft launch — share with friends & family', 'Send the live URL to a small group for feedback. Ask them to create accounts, log some places, and report any bugs or missing features before broader launch.', NULL, '2026-05-15'::date, 21, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-12T21:18:39.104Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214023281081861/task/1214026590471718');

-- PC Liquidations (3 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('PC Liquidations', 'hot-pink', '1214374919155943');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214374919155943'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214374919155943'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214374919155943'), 'To Do', 1);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214374919155943'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214374919155943') AND name = 'To Do' LIMIT 1), 'Vet Affiliates ', 'https://app.asana.com/1/1200828512126939/profile/1201500833217140 this is our newest Affilaite client, I made sure you have access. 
Here is a process to vet these affilaites and then invite 


', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-29T14:42:15.977Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214374919155943/task/1214374919155953');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214374919155943'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214374919155943') AND name = 'To Do' LIMIT 1), 'Invite Affilaites', '', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-29T14:42:29.518Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214374919155943/task/1214374919155955');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214374919155943'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214374919155943') AND name = 'To Do' LIMIT 1), 'Process for affilliate sign ups', '', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-04-29T14:43:17.703Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214374919155943/task/1214374919155958');

-- PCLiquidations (3 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('PCLiquidations', 'purple', '1215399943508306');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215399943508306'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1215399943508306'), id FROM people WHERE email = 'thewritersblockph@gmail.com';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215399943508306'), 'Untitled section', 1);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215399943508306'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215399943508306') AND name = 'Untitled section' LIMIT 1), 'PCLiquidations — Affiliate Program Activation (Q4 2026)', 'https://docs.google.com/document/d/1AcZUWPmen5pt6EqNXCPIu1gWfapk7TKV88Ts8Qw0LHg/edit?usp=sharing

https://claude.ai/cowork/cse_01H2Esy51ZCzHbpUhKWtNS8b

Purpose

    Kickoff for the PCLiquidations affiliate activation (Awin Advertiser ID 125400). Jeremy has approved the 8% and 10% rates and supplied margin data.

Three things changed after Jeremy''s feedback

    The declines are wholly-new orders, not mixed baskets. Declined AOV is $542 vs $271 approved, exactly 2x. His 3-5% baseline return rate accounts for only about $770 of the $6,510, so 88% is the new-item policy. Amend-instead-of-decline is therefore NOT the fix. The part-code automation is.
    Refurb margin runs 15-60% and newer laptops and PCs sit at the LOW end which is exactly what content publishers feature. At 15% margin, 8% eats 53% of gross profit. Flat 8% needs a guardrail.
    B2B orders above about $2,500 route to the sales team and cannot be affiliate-tracked. Institutional channel downgraded from priority to opportunistic.

Baseline to beat

    103 joined publishers, 15 producers, 47 orders, $12,759 revenue, $383 commission
    3.0% flat effective rate across every publisher without exception
    98.3% bottom-funnel, 1.7% content, 33.8% decline rate
    0.75% headline conversion, 1.86% excluding the four zero-converting publishers. Track the second number.

Hard deadline

    Q4 deal hubs and gift guides lock mid-to-late September.

Reference docs

    Growth Plan, Client Brief for Jeremy, VA Operating Playbook, Publisher Tagging Workbook
', NULL, '2026-10-31'::date, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-08-31T22:51:11.912Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215399943508306/task/1218036012811520');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215399943508306'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215399943508306') AND name = 'Untitled section' LIMIT 1), 'Affiliate Growth Plan - Monitors', 'Im open to the idea, currently we have that clippable $40 off coupon but we can change strategy on it if there is someone that can drive real traffic.
Just checking in, seems like we''re having trouble getting much traction.   Anything else I can help with?
One thought, we just got a large lot of monitors in. https://www.pcliquidations.com/lenovo-thinkvision-t24-video/p/164898
Would this be something we could get them to promote if we offered a bigger % commission? ', (SELECT id FROM people WHERE email = 'james@yecommerce.io'), NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-09T05:14:08.291Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215399943508306/task/1216425749380935');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1215399943508306'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1215399943508306') AND name = 'Untitled section' LIMIT 1), 'Invite top deal partners ', 'Template to send when inviting 


----------------------------------------



Hey,

We''d love to have you on the PCLiquidations affiliate program — a refurbished IT reseller with 30+ years in business and 18,000+ 5-star reviews, offering laptops, desktops, and monitors at well below new prices.

We think your audience is a great fit!
You''ll get tracked deep links, a dedicated coupon, and competitive commission — with custom terms and samples available for the right partners.

Accept the invite and we''ll get you set up right away. Happy to answer any questions.

Thanks in advance
[Your name]
PCLiquidations Affiliate Program


----------------------------------------


Pleace to invite (if they already are joined please ignore)

    https://slickdeals.net/
    https://www.dealnews.com/
    https://www.techbargains.com/
    https://bensbargains.com/
    https://www.bradsdeals.com/
    https://www.dealsplus.com/ - not found
    https://www.dealcatcher.com/
    https://www.retailmenot.com/
    https://www.couponfollow.com/
    https://www.hip2save.com/
    https://www.offers.com/ - not found
    https://www.dealsofamerica.com/
    https://dealsea.com/
    https://www.dealighted.com/ - not found
    https://www.coupons.com/ - not found
    https://www.savings.com/
    https://www.couponcabin.com/
    Capital One 
', (SELECT id FROM people WHERE email = 'thewritersblockph@gmail.com'), NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-07-15T22:29:25.579Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1215399943508306/task/1216606014360680');

-- Pig of the Month (2 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('Pig of the Month', 'magenta', '1214556231476101');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1214556231476101'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214556231476101'), 'To Do', 1);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214556231476101'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214556231476101') AND name = 'To Do' LIMIT 1), 'Setup Pig of the Month google Ads', '', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-05T23:44:42.148Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214556231476101/task/1214556397787462');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1214556231476101'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1214556231476101') AND name = 'To Do' LIMIT 1), 'Setup Pig of the month Bing Ads', '', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2026-05-05T23:44:49.763Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1214556231476101/task/1214556397787464');

-- MadChuck (6 open tasks)
INSERT INTO projects (name, color, asana_gid) VALUES ('MadChuck', 'blue', '1211826769424141');
INSERT INTO project_members (project_id, person_id) SELECT (SELECT id FROM projects WHERE asana_gid = '1211826769424141'), id FROM people WHERE email = 'james@yecommerce.io';
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), 'To Do', 1);
INSERT INTO sections (project_id, name, position) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), 'Paid Ads', 2);
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'To Do' LIMIT 1), 'INFO', 'https://docs.google.com/document/d/1vkSQgu6mxOY0Cq_bFBOCQS3mbHv2jSe4BI7SUk21LeA/edit?usp=sharing

Holiday brief
https://docs.google.com/document/d/1Xb7tGUNkNuMrRVcefsLyehouFdMefVExqWnwDwclwHU/edit?usp=sharing

MadChuck Creatives and More 
https://drive.google.com/drive/folders/1o5bG97jEuxUV7u8j7JUc3hOxOQm_hfpu?usp=sharing

Dec 25 Marketing Calender
https://docs.google.com/spreadsheets/d/1y1Gk9B3c0vuWKpnJBZJ2p6H6L_IW3ozMaFEHDCGc0eg/edit?usp=sharing', NULL, NULL, 1, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-20T22:51:43.717Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1212009031207972');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'To Do' LIMIT 1), 'Poisiton Statement Options ', '⭐ Option 1 — “The Bold Puerto Rican Lifestyle Brand” (Diaspora-Forward)

MadChuck is the bold Puerto Rican lifestyle brand that blends island culture, street–art flavor, and everyday comfort into apparel that stands out anywhere. Built in Puerto Rico and worn worldwide, we design gear that lets you rep your roots, your pride, and your personality—with colors, graphics, and attitude you won’t find in any mainland brand.
Who it’s for: Puerto Ricans in the U.S., culture-driven buyers, streetwear fans.


⭐ Option 2 — “Where Magic Meets Lifestyle Apparel” (Creative/Aesthetic)

MadChuck is the lifestyle apparel brand where magic, creativity, and culture collide. We make bold, premium-quality pieces that spark conversations and let you express the fun, imaginative side of who you are. Designed with the artistic energy of Puerto Rico and made for anyone who loves standing out—not fitting in.
Who it’s for: Creative fashion shoppers, collectors, fans of magic & aesthetics.


⭐ Option 3 — “Premium Graphic Apparel With Island Attitude” (General U.S. Positioning)

MadChuck is a premium graphic apparel brand inspired by Puerto Rico’s vibrant energy—designed for people who want unique, high-quality pieces that turn heads. We combine modern streetwear silhouettes with bold artwork and cultural edge so U.S. customers can experience a slice of island attitude in every fit.
Who it’s for: Streetwear customers, general U.S. buyers who crave standout apparel.


⭐ Option 4 — (For Ads + Brand Pages) “Wear Your Magic.”

MadChuck brings Puerto Rico’s creative fire to the world through bold apparel that mixes magic, mischief, and modern streetwear. Whether you’re repping your island pride or just love standout pieces, our designs help you tell a story without saying a word.', NULL, NULL, 2, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-21T23:31:46.935Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1212049774104767');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'Paid Ads' LIMIT 1), 'Meta Ads - MadChuck', '', NULL, NULL, 3, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-05T17:43:04.534Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1211851949230123');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'Paid Ads' LIMIT 1), 'Google Ads - MadChuck', '', NULL, NULL, 4, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-17T19:42:19.334Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1211971645496006');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'Paid Ads' LIMIT 1), 'TikTok Shops', '', NULL, NULL, 5, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-19T20:20:50.141Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1211986556123232');
INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by, created_at, asana_url) VALUES ((SELECT id FROM projects WHERE asana_gid = '1211826769424141'), (SELECT id FROM sections WHERE project_id = (SELECT id FROM projects WHERE asana_gid = '1211826769424141') AND name = 'Paid Ads' LIMIT 1), 'TikTok Ads ', '', NULL, NULL, 6, (SELECT id FROM people WHERE email = 'james@yecommerce.io'), '2025-11-19T20:20:57.497Z'::timestamptz, 'https://app.asana.com/1/1200828512126939/project/1211826769424141/task/1211986556123234');

