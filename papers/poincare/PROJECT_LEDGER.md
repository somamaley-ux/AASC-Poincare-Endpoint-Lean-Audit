# Poincare AASC Constraint-Formalism Manuscript Project

This package contains the manuscript source for a mathematical AASC constraint-formalism proof of the Poincare endpoint by fixed-carrier negative-branch exclusion.

## Primary deliverables

- Main PDF: `manuscript/poincare_aasc_final_publication.pdf`
- Main LaTeX source: `manuscript/poincare_aasc_final_publication.tex`
- Build script: `build/build_pdf.sh`
- Render QA: `qa/render_final_publication/`
- Contact sheet: `qa/render_contact_sheet_final_publication.jpg`

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

## Lean boundary

Lean 4 material in this package is support and audit material for theorem routing, kernel discipline, proof-spine bookkeeping, and the paper-specific formalization scope. It does not replace the manuscript proof. Existing corpus formalization support records current provenance for the relevant AASC machinery, and the stable paper-specific Lean formalization will incorporate that machinery directly.

A challenge to Lean support must identify a mismatch between support material and the manuscript theorem chain. A challenge to the proof must target a theorem link in the manuscript proof spine.

## Comparison boundary

Perelman/Ricci-flow sources remain comparison-only and do not enter the AASC proof spine. The traditional solution is classified as a geometric-evolution bridge route after the AASC endpoint closure.

## QA notes

The manuscript was rebuilt with a clean multi-pass LaTeX workflow. The final PDF was rendered to PNG pages using the PDF-skill renderer and visually checked via the contact sheet in `qa/`.
