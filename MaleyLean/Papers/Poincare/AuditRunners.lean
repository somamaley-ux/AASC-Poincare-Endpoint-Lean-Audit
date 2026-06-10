import MaleyLean.Papers.Poincare.TruthBoundary

/-!
# Poincare endpoint audit runner registry

The registry keeps the public audit surface explicit: focused axiom checks,
the aggregate PowerShell script, and the current status/progress summaries.
-/

namespace MaleyLean
namespace Papers
namespace Poincare

/-- Canonical focused audit files for the Poincare endpoint archive. -/
def PoincareEndpointFocusedAuditRunnerFiles : List String :=
  [ "Checks/Axiom/MinimalConditionsForAdmissibleConstructionAxiomCheck.lean"
  , "Checks/Axiom/NonDegenerateConstructionAndKernelOfAdmissibilityAxiomCheck.lean"
  , "Checks/Axiom/PoincareEndpointClosureAxiomCheck.lean"
  , "Checks/Axiom/PoincareEndpointStatusLedgerAxiomCheck.lean"
  , "Checks/Axiom/PoincareTruthBoundaryAxiomCheck.lean"
  , "Checks/Axiom/PoincareEndpointAuditRunnersAxiomCheck.lean"
  , "Checks/Axiom/PoincareFullStackAASCAxiomCheck.lean" ]

/-- Aggregate PowerShell audit runner for the Poincare endpoint route. -/
def PoincareEndpointAggregateAuditRunnerFiles : List String :=
  [ "scripts/check-Poincare-endpoint-audit.ps1" ]

def PoincareEndpointAuditRunnerFiles : List String :=
  PoincareEndpointFocusedAuditRunnerFiles ++
    PoincareEndpointAggregateAuditRunnerFiles

def PoincareEndpointFocusedAuditRunnerFilesDuplicateFreeBool : Bool :=
  PoincareEndpointFocusedAuditRunnerFiles.length ==
    PoincareEndpointFocusedAuditRunnerFiles.eraseDups.length

def PoincareEndpointAggregateAuditRunnerFilesDuplicateFreeBool : Bool :=
  PoincareEndpointAggregateAuditRunnerFiles.length ==
    PoincareEndpointAggregateAuditRunnerFiles.eraseDups.length

def PoincareEndpointAuditRunnerFilesDuplicateFreeBool : Bool :=
  PoincareEndpointAuditRunnerFiles.length ==
    PoincareEndpointAuditRunnerFiles.eraseDups.length

def PoincareEndpointFocusedAuditRunnerFilesPopulatedBool : Bool :=
  PoincareEndpointFocusedAuditRunnerFiles.all (fun file => !file.isEmpty)

def PoincareEndpointAuditRunnerFilesPopulatedBool : Bool :=
  PoincareEndpointAuditRunnerFiles.all (fun file => !file.isEmpty)

def PoincareEndpointAuditRunnerFormalizationStatusSummary : String :=
  PoincareEndpointCurrentFormalizationStatusSummary

def PoincareEndpointAuditRunnerProgressSummary : String :=
  PoincareEndpointCurrentProgressSummary

def PoincareEndpointAuditRunnerFormalizationStatusSummaryPopulatedBool : Bool :=
  !PoincareEndpointAuditRunnerFormalizationStatusSummary.isEmpty

def PoincareEndpointAuditRunnerProgressSummaryPopulatedBool : Bool :=
  !PoincareEndpointAuditRunnerProgressSummary.isEmpty

theorem PoincareEndpointFocusedAuditRunnerFiles_count_eq :
    PoincareEndpointFocusedAuditRunnerFiles.length = 7 := by
  rfl

theorem PoincareEndpointAggregateAuditRunnerFiles_count_eq :
    PoincareEndpointAggregateAuditRunnerFiles.length = 1 := by
  rfl

theorem PoincareEndpointAuditRunnerFiles_count_eq :
    PoincareEndpointAuditRunnerFiles.length = 8 := by
  rfl

theorem PoincareEndpointAuditRunnerFiles_decomposes :
    PoincareEndpointAuditRunnerFiles =
      PoincareEndpointFocusedAuditRunnerFiles ++
        PoincareEndpointAggregateAuditRunnerFiles := by
  rfl

theorem PoincareEndpointFocusedAuditRunnerFilesDuplicateFreeBool_eq_true :
    PoincareEndpointFocusedAuditRunnerFilesDuplicateFreeBool = true := by
  rfl

theorem PoincareEndpointAggregateAuditRunnerFilesDuplicateFreeBool_eq_true :
    PoincareEndpointAggregateAuditRunnerFilesDuplicateFreeBool = true := by
  rfl

theorem PoincareEndpointAuditRunnerFilesDuplicateFreeBool_eq_true :
    PoincareEndpointAuditRunnerFilesDuplicateFreeBool = true := by
  rfl

theorem PoincareEndpointFocusedAuditRunnerFilesPopulatedBool_eq_true :
    PoincareEndpointFocusedAuditRunnerFilesPopulatedBool = true := by
  rfl

theorem PoincareEndpointAuditRunnerFilesPopulatedBool_eq_true :
    PoincareEndpointAuditRunnerFilesPopulatedBool = true := by
  rfl

set_option maxRecDepth 10000 in
theorem PoincareEndpointAuditRunnerFormalizationStatusSummaryPopulatedBool_eq_true :
    PoincareEndpointAuditRunnerFormalizationStatusSummaryPopulatedBool = true := by
  rfl

set_option maxRecDepth 10000 in
theorem PoincareEndpointAuditRunnerProgressSummaryPopulatedBool_eq_true :
    PoincareEndpointAuditRunnerProgressSummaryPopulatedBool = true := by
  rfl

def PoincareEndpointAuditRunnerRegistryComplete : Prop :=
  PoincareEndpointFocusedAuditRunnerFiles.length = 7 /\
  PoincareEndpointAggregateAuditRunnerFiles.length = 1 /\
  PoincareEndpointAuditRunnerFiles.length = 8 /\
  PoincareEndpointAuditRunnerFiles =
      PoincareEndpointFocusedAuditRunnerFiles ++
        PoincareEndpointAggregateAuditRunnerFiles /\
  PoincareEndpointAuditRunnerFilesDuplicateFreeBool = true /\
  PoincareEndpointAuditRunnerFilesPopulatedBool = true /\
  PoincareEndpointAuditRunnerFormalizationStatusSummaryPopulatedBool = true /\
  PoincareEndpointAuditRunnerProgressSummaryPopulatedBool = true /\
  PoincareTruthBoundaryLedgerComplete

set_option maxRecDepth 10000 in
theorem PoincareEndpointAuditRunnerRegistryComplete_holds :
    PoincareEndpointAuditRunnerRegistryComplete := by
  refine And.intro PoincareEndpointFocusedAuditRunnerFiles_count_eq ?_
  refine And.intro PoincareEndpointAggregateAuditRunnerFiles_count_eq ?_
  refine And.intro PoincareEndpointAuditRunnerFiles_count_eq ?_
  refine And.intro PoincareEndpointAuditRunnerFiles_decomposes ?_
  refine And.intro PoincareEndpointAuditRunnerFilesDuplicateFreeBool_eq_true ?_
  refine And.intro PoincareEndpointAuditRunnerFilesPopulatedBool_eq_true ?_
  refine And.intro
    PoincareEndpointAuditRunnerFormalizationStatusSummaryPopulatedBool_eq_true ?_
  refine And.intro PoincareEndpointAuditRunnerProgressSummaryPopulatedBool_eq_true ?_
  exact PoincareTruthBoundaryLedgerComplete_holds

end Poincare
end Papers
end MaleyLean
