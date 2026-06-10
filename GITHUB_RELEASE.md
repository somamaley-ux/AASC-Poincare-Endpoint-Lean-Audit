# Suggested GitHub Release

## Release Title Template

AASC Poincare Endpoint Lean Audit vX.Y.Z

## Release Notes

Standalone Lean 4 archive for the AASC-first Poincare endpoint proof spine.

This release verifies the manuscript-facing AASC route to `OfficialPCEndpoint`
in a dedicated repository separated from the broader AASC working checkout.
Fixed-carrier endpoint use enters the kernel-governed endpoint regime; the
native negative branch `PCNeg` is routed through sphere-bridge image exclusion;
official negative endpoint use induces theorem-level endpoint-status
governance; governance induces an independent same-domain sphere discriminator;
and the reusable AASC no-independent-classifier closure excludes such a
discriminator.  The pointwise endpoint `SphereRead` is therefore forced.

Verification passed:

```powershell
lake build MaleyLean.Papers.Poincare.AuditRunners
powershell -ExecutionPolicy Bypass -File scripts/check-poincare-endpoint-audit.ps1
```

Audit status:

- `PCEndpointClosure=100%`
- `PCRicciBridgeComparisonBoundary=100%`
- `PoincareReferenceArchiveMaturityComparable=100%`
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
