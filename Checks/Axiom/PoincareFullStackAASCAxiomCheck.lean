import MaleyLean.Papers.Poincare.AuditRunners
import MaleyLean.Papers.MinimalConditionsForAdmissibleConstruction.APlusAuditRunners

open MaleyLean.Papers.Poincare
open MaleyLean.Papers.Poincare.EndpointClosure
open MaleyLean.Papers.MinimalConditionsForAdmissibleConstruction

/-!
# Poincare full-stack AASC axiom surface

This check imports the reusable AASC foundation/audit-runner layer and the Poincare
endpoint audit-runner layer together.  It is the single-file audit entry point
for the current standalone Poincare sphere endpoint archive.
-/

#print axioms KernelAPlusAuditCertificate.auditSurfaceComplete_holds
#print axioms kernelAPlusAuditRunnerRegistryComplete_holds
#print axioms pcNegativeOccupation_nonoptional
#print axioms pcGovernedEndpointUse_bivalent
#print axioms pcOfficialNegativeResolution_endpointStatusGovernance
#print axioms pcNoIndependentSphereDiscriminator_of_foundationalNoClassifier
#print axioms pcEndpointAASCContext_closes_endpoint
#print axioms pcRicciBridgeStandingPacket_components
#print axioms ricciBridgeAudit_context_iff
#print axioms pcRicciBridge_remains_comparisonOnly
#print axioms PoincareEndpointStatusLedgerComplete_holds
#print axioms PoincareTruthBoundaryLedgerComplete_holds
#print axioms PoincareEndpointAuditRunnerRegistryComplete_holds
