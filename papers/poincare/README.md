# Poincare AASC Constraint-Formalism Manuscript Project

This package contains the manuscript source for a mathematical AASC constraint-formalism proof of the Poincare endpoint by fixed-carrier negative-branch exclusion.

## Primary deliverables

- Main PDF: `manuscript/poincare_aasc_final_publication.pdf`
- Main LaTeX source: `manuscript/poincare_aasc_final_publication.tex`
- Build script: `build/build_pdf.sh`
- Render QA: `qa/render_final_publication_sweep/`
- Contact sheet: `qa/render_contact_sheet_final_publication_sweep.jpg`

## Proof-spine posture

The manuscript is the proof. AASC is used as a mathematical constraint formalism, not as philosophical commentary or optional proof narration. The live audit spine is:

```text
OfficialPCEndpointUse(M) -> K_PC(M)
PCNeg(M) <-> StdPCNeg(M) <-> SphereBridgeImgExcl_PC(M)
SphereBridgeImgExcl_PC(M) + OfficialPCNegativeResolution(M) -> ThmSphereDisc_PC(M)
ThmSphereDisc_PC(M) -> EndpointGov_PC(M)
EndpointGov_PC(M) -> IndependentSphereDisc_PC(M)
IndependentSphereDisc_PC(M) -> contradiction
```

The final endpoint closeout now uses the local exact-complement route:

```text
[not SphereRead(M)]_i
  -> LocalCountercase_PC(M)
  -> EndpointCounterforce_PC(M)
  -> SphereBridgeImgExcl_PC^loc(M)
  -> IndependentSphereDisc_PC(M)
  -> contradiction
  -> SphereRead(M)
```

Thus `M` is homeomorphic to `S^3` under the fixed Poincare endpoint target.

## Lean boundary

Lean 4 material in this package is support and audit material for theorem routing, kernel discipline, proof-spine bookkeeping, and the paper-specific formalization scope. It does not replace the manuscript proof. The current public Lean audit layer is available here:

- GitHub: https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit
- Release: v1.0.1
- DOI: https://doi.org/10.5281/zenodo.20620926

The manuscript appendix now records the release verification commands, audit-status entries, principal Lean anchors, pinned Lean/mathlib environment, truth boundary, and the support relationship between the manuscript theorem chain and the Lean audit archive. The stable paper-specific formalization scope includes the relevant AASC machinery directly.

A challenge to Lean support must identify a mismatch between support material and the manuscript theorem chain. A challenge to the proof must target a theorem link in the manuscript proof spine.

## Comparison boundary

Perelman/Ricci-flow sources remain comparison-only and do not enter the AASC proof spine. The traditional solution is classified as a geometric-evolution bridge route after the AASC endpoint closure.

## QA notes

The manuscript was rebuilt with a clean multi-pass LaTeX workflow. The final verification pass reports no undefined references, undefined citations, rerun notices, overfull boxes, or underfull-box warnings. All 51 pages were rendered to PNG pages and visually checked via the contact sheet in `qa/render_contact_sheet_final_publication_sweep.jpg`.

## Lean appendix integration

The Lean/AASC support appendix now includes the public audit repository, release v1.0.1, DOI 10.5281/zenodo.20620926, verification commands, audit status, pinned Lean/mathlib environment, handoff chain, principal Lean anchors, truth boundary, and formalization map. The manuscript proof remains the proof text; the Lean layer audits the endpoint-spine routing and formal discipline.


## Weakening-resistance audit

This version incorporates the same-mode pressure point that a critic may grant the core endpoint adequacy roles while asking whether a strictly weaker local packet could preserve target-slot fixation plus minimal report evaluability while still permitting negative endpoint governance. The manuscript answers that objection in Section `Weakening-Resistance of the Local Kernel Packet` by auditing K5, K6, K11, and K13 node by node. The live burden for such a critic is to define a weakening `W` that preserves fixed carrier, theorem-bearing target-slot fixation, minimal report evaluability, standing-admissibility discipline, and no carrier shift while permitting endpoint-resolving negative governance that is not support, bookkeeping, bridge completion, lawful coequal target role, or second endpoint authority. The section proves that no such strict same-carrier weakening survives: it is endpoint-equivalent, support-level, carrier-shifting, lawful-coequal-targeted, or second-governing.


## Bridge-object and local reductio hardening

This upgraded release adds the explicit sphere-bridge object `B^PC(M)` and the local exact-complement reductio closeout. The bridge object records same-manifold, carrier, standing, readout-slot, category, UEAP, and ATS discipline without containing sphere-readout by definition. The local closeout opens `[not SphereRead(M)]_i` as the sole exact-complement countercase, routes it through local bridge-image exclusion and no-independent-discriminator closure, and discharges that same object-level assumption. The global negative-resolution route remains as a route audit; the final endpoint closeout now uses local annotation discharge.

The hostile-referee worksheet, theorem ladder, anti-circularity audit, Lean boundary note, handoff route, and formalization map have been updated to include the bridge object and local exact-complement discharge.

## Final publication sweep

This package includes the final presentation sweep after the minimal-evaluability hardening. The manuscript removes revision-history wording from proof-bearing sections, normalizes the front-page proof-class wording, preserves the minimal report-evaluability/K11 distinction and the target-slot/K13 distinction, and renders cleanly to the final QA page set.
