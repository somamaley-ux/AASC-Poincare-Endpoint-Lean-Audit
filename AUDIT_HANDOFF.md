# Poincare Audit Handoff

Repository:
https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit

Release:
https://github.com/somamaley-ux/AASC-Poincare-Endpoint-Lean-Audit/releases/tag/v1.0.2

DOI:
https://doi.org/10.5281/zenodo.20620926

Current status:

- `PCEndpointClosure=100%`
- `PCRicciBridgeComparisonBoundary=100%`
- `PoincareReferenceArchiveMaturityComparable=100%`
- weakening-resistance clarification integrated
- local audit passed
- GitHub Actions audit passed

The closed endpoint route is:

```text
OfficialPCEndpointUse(M)
  -> PCKernelInstantiated(M)
  -> PCNeg(M) as SphereBridgeImgExclPC(M)
  -> ThmSphereDiscPC(M)
  -> EndpointGovPC(M)
  -> IndependentSphereDiscPC(M)
  -> blocked by weakening-resistant K5/K6/K11/K13 same-carrier audit
  -> contradiction
  -> SphereRead(M)
  -> OfficialPCEndpoint
```

Run locally with:

```powershell
lake build MaleyLean.Papers.Poincare.AuditRunners
powershell -ExecutionPolicy Bypass -File scripts/check-poincare-endpoint-audit.ps1
```

Key Lean anchors:

- `pcNegativeOccupation_nonoptional`
- `pcEndpointResolvingNonGovernance_hiddenFifthCase_impossible`
- `pcOfficialNegativeResolution_endpointStatusGovernance`
- `pcNeg_independentSphereDiscriminator`
- `pcNoIndependentSphereDiscriminator_of_foundationalNoClassifier`
- `pcNoStrictSameCarrierWeakeningPermitsIndependentNegativeGovernance`
- `pcNeg_impossible`
- `sphereRead_forced`
- `officialPCEndpoint_of_aascContext`
- `pcEndpointAASCContext_closes_endpoint`

Truth boundary:

The Lean archive audits the AASC endpoint proof spine.  It does not formalize
3-manifold topology, Ricci flow, or surgery from first principles.  Ricci-flow
material is represented only by the comparison boundary
`PCRicciBridgeStandingPacket`, `RicciBridgeAudit`, and
`pcRicciBridge_remains_comparisonOnly`.

Manuscript snapshot:

- `papers/poincare/poincare_aasc_final_publication.pdf`
- `papers/poincare/main.tex`
- `formalization_map/Poincare_EndpointClosure_PreLeanMap.lean`

The attached `.sha256` file in the current GitHub release records the archive checksum.
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
