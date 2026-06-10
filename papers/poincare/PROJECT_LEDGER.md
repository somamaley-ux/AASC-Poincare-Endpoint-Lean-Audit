# Poincare AASC Constraint-Formalism Manuscript Project

This package contains the manuscript source for a mathematical AASC constraint-formalism proof of the Poincare endpoint by fixed-carrier negative-branch exclusion.

## Primary deliverables

- Main PDF snapshot: `papers/poincare/poincare_aasc_final_publication.pdf`
- Main LaTeX source snapshot: `papers/poincare/main.tex`
- Bibliography snapshot: `papers/poincare/references.bib`
- Lean endpoint audit spine: `MaleyLean/Papers/Poincare/EndpointClosure.lean`
- Focused audit runner: `scripts/check-poincare-endpoint-audit.ps1`
- Public Lean audit DOI: `https://doi.org/10.5281/zenodo.20620926`

## Proof-spine posture

The manuscript is the proof. AASC is used as a mathematical constraint formalism, not as philosophical commentary or optional proof narration. The live proof spine is:

```text
OfficialPCEndpointUse(M) -> K_PC(M)
PCNeg(M) <-> StdPCNeg(M) <-> SphereBridgeImgExcl_PC(M)
SphereBridgeImgExcl_PC(M) + OfficialPCNegativeResolution(M) -> ThmSphereDisc_PC(M)
ThmSphereDisc_PC(M) -> EndpointGov_PC(M)
EndpointGov_PC(M) -> IndependentSphereDisc_PC(M)
IndependentSphereDisc_PC(M) -> contradiction
therefore not PCNeg(M), hence M homeomorphic to S^3 under the fixed Poincare endpoint target.
```

The clarification patch adds a weakening-resistance audit for K5, K6, K11, and
K13: a critic must exhibit a strict same-carrier weakening that preserves
target-slot fixation, minimal report evaluability, standing-admissibility
discipline, and carrier fidelity while still permitting endpoint-resolving
negative governance that is not support, bookkeeping, carrier shift, bridge
completion, lawful coequal target role, or second endpoint authority.  The
manuscript and Lean-facing audit record that no such weakening survives.

## Lean boundary

Lean 4 material in this archive is support and audit material for theorem routing, kernel discipline, proof-spine bookkeeping, and the paper-specific endpoint formalization scope. It does not replace the manuscript proof or claim a first-principles formalization of 3-manifold topology, homeomorphism, Ricci flow, surgery, or classical classification. The archive includes the reusable AASC foundation layer used by the Poincare route together with the Poincare endpoint audit spine, status ledger, truth-boundary ledger, and focused axiom checks.

A challenge to Lean support must identify a mismatch between support material and the manuscript theorem chain. A challenge to the proof must target a theorem link in the manuscript proof spine.

## Comparison boundary

Perelman/Ricci-flow sources remain comparison-only and do not enter the AASC proof spine. The traditional solution is classified as a geometric-evolution bridge route after the AASC endpoint closure.

## QA notes

The manuscript snapshot was imported from the final Poincare package. The repository-level audit was verified locally and in GitHub Actions through `scripts/check-poincare-endpoint-audit.ps1`.
