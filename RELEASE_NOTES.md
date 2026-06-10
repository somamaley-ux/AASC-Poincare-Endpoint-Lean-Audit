# AASC Poincare Endpoint Lean Audit v1.0.2

Standalone Lean 4 archive for the AASC-first Poincare endpoint proof spine.

Release:
https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit/releases/tag/v1.0.2

DOI:
https://doi.org/10.5281/zenodo.20620926

This release verifies the manuscript-facing AASC route to `OfficialPCEndpoint`.
The native negative branch `PCNeg` is routed through standard negative form,
sphere-bridge image exclusion, theorem-level endpoint-status governance, and
independent same-domain sphere discrimination.  The reusable AASC
no-independent-classifier closure excludes that discriminator, forcing
`SphereRead` pointwise.

This patch release integrates the manuscript clarification on
weakening-resistance: K5, K6, K11, and K13 are recorded as locally necessary
against strict same-carrier weakenings that would preserve endpoint use while
permitting independent negative governance.

Verification passed locally and in GitHub Actions:

```powershell
lake build MaleyLean.Papers.Poincare.AuditRunners
powershell -ExecutionPolicy Bypass -File scripts/check-poincare-endpoint-audit.ps1
```

Audit status:

- `PCEndpointClosure=100%`
- `PCRicciBridgeComparisonBoundary=100%`
- `PoincareReferenceArchiveMaturityComparable=100%`
- weakening-resistance audit anchor included
- seven focused AASC/Poincare audit files run
- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` declaration in
  the active Poincare audit surface
- standard Lean/classical dependencies may appear in endpoint closeout reports
  where classical case analysis is used
- Ricci flow is comparison boundary only, not proof machinery

The attached `.sha256` file records the release archive checksum.

Truth boundary:

This is an AASC endpoint-structure Lean audit archive for the Poincare endpoint
route.  It is not a conventional first-principles topology formalization or a
Ricci-flow proof.
