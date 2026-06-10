# Negative-Branch Transfer Audit Summary

This audit records the transfer of the BSD endpoint-use architecture into the Poincare carrier.

## Transfer pattern

| BSD architecture role | Poincare import |
|---|---|
| endpoint under audit | `PCEndpointUnderAudit` |
| fixed carrier | `C_PC(M)` |
| mismatch normal form | `PCNeg(M)` / `StdPCNeg(M)` |
| bridge-image exclusion | `SphereBridgeImgExcl_PC(M)` |
| official negative resolution | `OfficialPCNegativeResolution(M)` |
| theorem-level status discriminator | `ThmSphereDisc_PC(M)` |
| endpoint-status governance | `EndpointGov_PC(M)` |
| independent same-domain discriminator | `IndependentSphereDisc_PC(M)` |
| no-independent-classifier closure | `not IndependentSphereDisc_PC(M)` under `K_PC(M)` |

## Hardening result

The proof does not rely on direct truth-to-admissibility collapse. It relies on endpoint-bearing use: if the native negative branch is used as official negative endpoint resolution, it performs endpoint-status governance. Such governance induces independent same-domain endpoint discrimination, which the kernel excludes.

## Lean boundary

Lean-facing material is support/audit material for the AASC endpoint route. The standalone archive includes the relevant reusable AASC foundation layer and the Poincare-specific Lean spine connecting native negative occupation to sphere-bridge image exclusion, endpoint-status governance, independent same-domain sphere discrimination, and contradiction under AASC no-independent-classifier closure. It remains bounded away from a first-principles formalization of Ricci flow, surgery, or 3-manifold topology.
