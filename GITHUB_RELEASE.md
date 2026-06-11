# GitHub Release v1.0.2

## Release Title

AASC Poincare Endpoint Lean Audit v1.0.2

## Release URL

https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit/releases/tag/v1.0.2

## Release Notes

Standalone Lean 4 archive for the AASC-first Poincare endpoint proof spine.

DOI: https://doi.org/10.5281/zenodo.20620926

This release verifies the manuscript-facing AASC route to `OfficialPCEndpoint`
in a dedicated repository separated from the broader AASC working checkout.
Fixed-carrier endpoint use enters the kernel-governed endpoint regime; the
native negative branch `PCNeg` is routed through sphere-bridge image exclusion;
official negative endpoint use induces theorem-level endpoint-status
governance; governance induces an independent same-domain sphere discriminator;
and the reusable AASC no-independent-classifier closure excludes such a
discriminator.  The pointwise endpoint `SphereRead` is therefore forced.

This patch release integrates the clarification that a strict same-carrier
weakening of K5, K6, K11, or K13 cannot preserve non-degenerate Poincare
endpoint use while permitting independent negative endpoint governance.  The
new Lean-facing audit anchor is
`pcNoStrictSameCarrierWeakeningPermitsIndependentNegativeGovernance`.

Verification passed:

```powershell
lake build MaleyLean.Papers.Poincare.AuditRunners
powershell -ExecutionPolicy Bypass -File scripts/check-poincare-endpoint-audit.ps1
```

Audit status:

- `PCEndpointClosure=100%`
- `PCRicciBridgeComparisonBoundary=100%`
- `PoincareReferenceArchiveMaturityComparable=100%`
- weakening-resistance audit anchor included
- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` declaration in
  the active Poincare audit surface
- pre-Lean manuscript signature map parses outside the audited proof surface
- pre-Lean manuscript signature map is not imported by the active Lean audit
  surface
- Ricci-flow/Hamilton-Perelman material is comparison boundary only

Truth boundary:

This is an AASC endpoint-structure Lean audit archive for the Poincare endpoint
route.  It does not claim a conventional first-principles formalization of
3-manifold topology, homeomorphism, Ricci flow, surgery, or classical topology
classification.

Pinned environment:

- Lean toolchain: `leanprover/lean4:v4.28.0`
- mathlib revision: `8f9d9cff6bd728b17a24e163c9402775d9e6a365`

Release assets:

- standalone archive zip
- manifest
- SHA256 checksum file
## Manuscript-Faithful Mechanization Standard

This repository is calibrated to the manuscript as the proof object.  The Lean
surface formalizes the manuscript-facing AASC endpoint route for the Poincare endpoint:
fixed-carrier endpoint use, the target-specific negative/separator occupation,
same-domain discriminator exclusion, and the final represented endpoint
closeout.

The classical 3-manifold, sphere-recognition, homeomorphism, and Ricci-flow comparison carrier and equivalence bridges are represented by
named adequacy, standing, or bridge anchors matching the manuscript.  They are
not claimed here as a full first-principles formalization of the surrounding
classical subject.  The repo therefore should be read as a manuscript-faithful
AASC endpoint mechanization, with explicit carrier-adequacy boundaries, rather
than as a rebuilt-from-foundations formalization of the entire classical field.
