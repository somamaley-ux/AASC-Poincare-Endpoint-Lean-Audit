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

Lean-facing material is support/audit material only. The paper-specific Lean formalization is scoped to the stable manuscript and will include the relevant AASC machinery directly.
