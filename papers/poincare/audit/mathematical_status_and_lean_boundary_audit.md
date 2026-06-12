# Mathematical Status and Lean Support Boundary Audit

This audit records the final proof posture used by the manuscript.

## Status locks

| Lock | Manuscript posture |
|---|---|
| AASC mathematical status | AASC is the mathematical constraint formalism of the proof, not philosophical commentary or optional vocabulary. |
| Manuscript proof status | The proof is the theorem chain in the manuscript. |
| Lean role | Lean is support/audit material for routing, kernel discipline, and formalization scope; it is not a replacement proof. |
| AASC machinery | The current public Lean audit layer records the endpoint-spine support surface; the stable paper-specific formalization scope includes the relevant AASC machinery directly. |
| Poincare formalization scope | The current Poincare Lean audit layer is available; the stable manuscript formalization scope includes the relevant AASC machinery directly. |

## Refutation posture

A same-mode objection must attack a mathematical definition, theorem link, dependency claim, carrier instantiation, endpoint-governance inference, or support correspondence. Merely saying that AASC is unfamiliar, nonclassical, or not Ricci flow is wrong-mode. Merely saying that Lean is not the proof is also wrong-mode, because the manuscript does not claim that it is.


## Public Lean audit layer

- Repository: https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit
- Release: v1.0.1
- DOI: https://doi.org/10.5281/zenodo.20620926
- Verification commands recorded in the manuscript appendix: `lake build MaleyLean.Papers.Poincare.AuditRunners` and `scripts/check-poincare-endpoint-audit.ps1`.
