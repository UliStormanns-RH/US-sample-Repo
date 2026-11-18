# Seed data

Example data for development and demos. Nothing here is loaded into the cloud project.

## wireframe-accounting

Fictional accounting system taken from the clickable wireframe
`99-archive/Mock3/cobol-call-hierarchy-wireframe.html` (outside this repository).
Extracted on 2026-11-17; module data was read programmatically from the wireframe's `MODULES` and
`MISSING` objects, data sources and filters from its form markup.

One JSON file per table of `02-dataModel/data-model.md`. Column names follow the data model.
References between rows use **names** instead of ids (e.g. `caller`, `callee`, `module`), so each
story can insert the rows once its tables exist.

| File | Table | Rows | Notes |
|---|---|---|---|
| `data_source.json` | `data_source` + `pds_source_config` / `vcs_source_config` | 3 | Used by `00-build/supabase/seed.sql` (US-01). |
| `module.json` | `module` | 38 | 21 programs, 11 copybooks, 6 missing modules. |
| `module_call.json` | `module_call` | 45 | `call_type`: STATIC, DYNAMIC, CICS_LINK, CICS_XCTL. Contains the CICS cycle ACCTONL → ACCTMENU → ACCTONL. |
| `copybook_usage.json` | `copybook_usage` | 23 | |
| `module_description.json` | `module_description` | 21 | `header_comment` is not a data model column; it holds the program header comment used for discrepancies. |
| `description_discrepancy.json` | `description_discrepancy` | 6 | `code_excerpt` and `related_call` are not data model columns; they come from the wireframe. |
| `missing_module_hint.json` | – | 6 | Hints for missing modules; no data model table (could feed `reload_request.extra_location`). |
| `filter_rule.json` | `filter_set` / `filter_rule` | 3 | |
| `analysis_view.json` | `analysis_view` | 1 | Root ACCTBTCH, depth 3, Top2Bottom. |

Interpretations made during extraction:

- Data sources: resolution order 10 / 20 / 30 follows the order in the wireframe list.
- SVN revision `HEAD` and the empty Git commit are stored as `null` (= latest, US-01 AC5).
- Credential references are the first option of each wireframe drop-down. They are references, not secrets.
- `module_call.dynamic_variable` for RATETBL → RATELOAD is `WS-LOADER`, as stated in the wireframe description.
- No line numbers, file references or source code exist in the wireframe; those columns are left out.

### Synthetic COBOL sources (`cbl/`, `cpy/`)

Generated on 2026-11-18 from the JSON files above, because the wireframe contains no source code.
**These are skeletons, not original sources.** Every file says so in its header.

| Folder | Files | Generated from |
|---|---|---|
| `cbl/*.cbl` | 21 programs (all `RESOLVED` programs in `module.json`) | `module_call.json`, `copybook_usage.json`, `module_description.json`, `description_discrepancy.json` |
| `cpy/*.cpy` | 11 copybooks (all `RESOLVED` copybooks in `module.json`) | `copybook_usage.json` (the "USED BY" list) |

What the files contain:

- Fixed format, ASCII, no line exceeds column 72. Characters such as `–` in header comments are written as `-`.
- Each call in `module_call.json` exactly once: `STATIC` → `CALL 'X'`, `DYNAMIC` → `MOVE 'X' TO <dynamic_variable>` + `CALL <dynamic_variable>`,
  `CICS_LINK` / `CICS_XCTL` → `EXEC CICS LINK|XCTL PROGRAM('X')`.
- Each row in `copybook_usage.json` as `COPY <name>.` in WORKING-STORAGE (also `SQLCA`, not `EXEC SQL INCLUDE`).
- The header comment is `module_description.header_comment`. For the 6 modules in `description_discrepancy.json`
  the `comment_text` follows it, and the `code_excerpt` lines sit in the PROCEDURE DIVISION, so the documented discrepancies exist in the code.
- Fields needed by the excerpts (`WS-AGE-YEARS`, `VALID-FLAG`, `ERR-SEVERITY`, `WS-PICSTR`, `ACCT-DORMANT` in `ACCTREC`) and the unused
  `WS-RATE-TABLE` in INTCALC are declared with invented PICs.

What they do not contain:

- Real logic, call parameters (`USING`) or record layouts. Copybooks hold only a `FILLER` placeholder.
- The `loc` values from `module.json`; the files are much shorter.
- The 6 `MISSING` modules (TAXCALC2, PRTSPOOL, DSNTIAR, CEE3ABD, CEEDAYS, CEEDATE). They are called but have no file, on purpose.

Not compiled; no COBOL compiler was available. Calls and COPY statements were checked against the JSON files with a script.
