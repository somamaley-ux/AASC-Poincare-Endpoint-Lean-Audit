# AASC Poincare Endpoint Lean Audit

Standalone Lean 4 archive for the AASC-first Poincare endpoint proof spine.

Public repository:
https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit

Current release:
https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit/releases/tag/v1.0.2

Archival DOI:
https://doi.org/10.5281/zenodo.20620926

This repository separates the Poincare endpoint audit surface from the broader
AASC working checkout.  It contains the reusable AASC foundation layer, the
Poincare endpoint Lean audit module, focused axiom checks, the pre-Lean
manuscript signature map, and the manuscript-facing PDF/source snapshot.

## Result Claim

This archive records a complete AASC endpoint-structure proof route for the
Poincare endpoint in the audit-spine proof class.  In that route, official
fixed-carrier Poincare endpoint use enters the kernel-governed endpoint
regime; the native negative branch `PCNeg` is identified with standard
negative form and sphere-bridge image exclusion; official negative endpoint use
induces theorem-level same-domain endpoint-status governance; that governance
induces an independent sphere discriminator; and the reusable AASC
no-independent-classifier closure excludes such a discriminator.  Therefore
`PCNeg` is impossible and `SphereRead` is forced pointwise, yielding
`OfficialPCEndpoint`.

The clarification patch also records weakening resistance for the local kernel
packet: a strict same-carrier weakening of K5, K6, K11, or K13 cannot preserve
non-degenerate endpoint use while permitting independent negative endpoint
governance.  Such a weakening is endpoint-equivalent, support-level,
carrier-shifting, lawful coequal-targeted, or second-governing.

The Hamilton-Perelman/Ricci-flow route is not proof machinery here.  It is
tracked only as a comparison bridge through `PCRicciBridgeStandingPacket` and
`RicciBridgeAudit`.

## Verification

```powershell
lake build MaleyLean.Papers.Poincare.AuditRunners
powershell -ExecutionPolicy Bypass -File scripts/check-poincare-endpoint-audit.ps1
```

Current local audit status:

- `PCEndpointClosure=100%`
- `PCRicciBridgeComparisonBoundary=100%`
- `PoincareReferenceArchiveMaturityComparable=100%`
- GitHub Actions audit passed for release `v1.0.2`
- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` declaration in
  the active Poincare audit surface
- pre-Lean manuscript signature map parses outside the active proof surface
- pre-Lean manuscript signature map is not imported by the active Lean audit
  surface

## Main Lean Anchors

- `MaleyLean/Papers/Poincare/EndpointClosure.lean`
- `pcNegativeOccupation_nonoptional`
- `pcNeg_iff_sphereBridgeImageExclusion`
- `pcOfficialNegativeResolution_endpointStatusGovernance`
- `pcNeg_independentSphereDiscriminator`
- `pcNoIndependentSphereDiscriminator_of_foundationalNoClassifier`
- `pcNoStrictSameCarrierWeakeningPermitsIndependentNegativeGovernance`
- `pcNeg_impossible`
- `sphereRead_forced`
- `officialPCEndpoint_of_aascContext`
- `pcEndpointAASCContext_closes_endpoint`
- `ricciBridgeAudit_context_iff`
- `pcRicciBridge_remains_comparisonOnly`

## Truth Boundary

This is an AASC endpoint-structure Lean audit archive.  It does not claim a
first-principles formalization of 3-manifold topology, homeomorphism,
Hamilton-Perelman Ricci flow, surgery, or classical topological classification.
Those objects are represented by semantic audit carriers or comparison
standing so the AASC endpoint route can be checked without importing a large
external topology library.

## Layout

- `MaleyLean/Papers/Poincare/` - Poincare endpoint proof spine, status ledger,
  truth-boundary ledger, and audit-runner registry.
- `MaleyLean/Papers/MinimalConditionsForAdmissibleConstruction/` - reusable
  AASC foundation and A+ audit support.
- `Checks/Axiom/` - focused axiom reports for the AASC foundation and Poincare
  endpoint surface.
- `formalization_map/` - pre-Lean manuscript signature map, parse-checked but
  deliberately outside the active proof surface.
- `papers/poincare/` - manuscript PDF/source snapshot and package ledgers.
- `scripts/` - local audit and packaging scripts.
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
