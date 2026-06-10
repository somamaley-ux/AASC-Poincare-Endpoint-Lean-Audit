import MaleyLean.Papers.Poincare.StatusLedger

/-!
# Poincare truth-boundary ledger

This file records the distinction between the closed AASC endpoint proof spine
and the intentionally abstract topological standing used by the Poincare
archive.  It is an audit aid: it does not add topological construction content, and it does
not convert the Ricci bridge comparison layer into a first-principles formalization.
-/

namespace MaleyLean
namespace Papers
namespace Poincare

/-- Classification labels for the Poincare archive truth boundary. -/
inductive PoincareTruthBoundaryKind where
  | leanClosedProofSpine
  | semanticCarrierAbstraction
  | structuralRoleCompressionBoundary
  | externalTopologyStanding
  | manuscriptSnapshotBoundary
deriving DecidableEq, Repr

def PoincareTruthBoundaryKind.label : PoincareTruthBoundaryKind -> String
  | .leanClosedProofSpine => "closed in the Lean proof spine"
  | .semanticCarrierAbstraction => "semantic carrier abstraction"
  | .structuralRoleCompressionBoundary =>
      "structural AASC role-compression boundary"
  | .externalTopologyStanding =>
      "external topological standing"
  | .manuscriptSnapshotBoundary => "manuscript snapshot boundary"

/-- Named truth-boundary items that should remain visible to auditors. -/
inductive PoincareTruthBoundaryItem where
  | carrierAndSphereReadout
  | roleCompressionArchitecture
  | pcEndpointRoute
  | aascClassifierExclusion
  | refinedComparisonFactorStanding
  | ricciBridgeGuardExact
  | manuscriptPdfSnapshot
deriving DecidableEq, Repr

def PoincareTruthBoundaryItem.title : PoincareTruthBoundaryItem -> String
  | .carrierAndSphereReadout =>
      "Poincare carrier and sphere readouts are semantic audit carriers"
  | .roleCompressionArchitecture =>
      "Poincare role-compression paper supplies the AASC claim-class architecture"
  | .pcEndpointRoute =>
      "sphere endpoint route is closed in the AASC proof spine"
  | .aascClassifierExclusion =>
      "Independent same-domain classifier exclusion is supplied by AASC"
  | .refinedComparisonFactorStanding =>
      "Ricci bridge comparison factors are an explicit bridge/factor-standing boundary"
  | .ricciBridgeGuardExact =>
      "Ricci bridge comparison endpoint has an exact conditional guard"
  | .manuscriptPdfSnapshot =>
      "Bundled manuscript PDF is refreshed from the Codex handoff render"

def PoincareTruthBoundaryItemCatalog : List PoincareTruthBoundaryItem :=
  [ .carrierAndSphereReadout
  , .roleCompressionArchitecture
  , .pcEndpointRoute
  , .aascClassifierExclusion
  , .refinedComparisonFactorStanding
  , .ricciBridgeGuardExact
  , .manuscriptPdfSnapshot ]

def PoincareTruthBoundaryItemTitles : List String :=
  PoincareTruthBoundaryItemCatalog.map PoincareTruthBoundaryItem.title

def PoincareTruthBoundaryItemTitlesPopulatedBool : Bool :=
  PoincareTruthBoundaryItemTitles.all (fun title => !title.isEmpty)

/-- One audited truth-boundary row. -/
structure PoincareTruthBoundaryRow where
  item : PoincareTruthBoundaryItem
  kind : PoincareTruthBoundaryKind
  leanAnchor : String
  truthBoundary : String
  declared : Bool
deriving DecidableEq

def PoincareTruthBoundaryRows : List PoincareTruthBoundaryRow :=
  [ { item := .carrierAndSphereReadout
      kind := .semanticCarrierAbstraction
      leanAnchor := "PCCarrier"
      truthBoundary := "closed simply connected 3-manifolds and sphere readout are represented by semantic audit carriers, not formalized from first principles"
      declared := true }
  , { item := .roleCompressionArchitecture
      kind := .structuralRoleCompressionBoundary
      leanAnchor := "poincare_aasc_final_publication"
      truthBoundary := "Poincare manuscript fixes the AASC proof class: structural endpoint closure excludes the native negative branch rather than importing Ricci flow"
      declared := true }
  , { item := .pcEndpointRoute
      kind := .leanClosedProofSpine
      leanAnchor := "pcEndpointAASCContext_closes_endpoint"
      truthBoundary := "sphere mismatch exclusion and pointwise sphere equality close inside the AASC endpoint spine"
      declared := true }
  , { item := .aascClassifierExclusion
      kind := .leanClosedProofSpine
      leanAnchor := "pcNoIndependentSphereDiscriminator_of_foundationalNoClassifier"
      truthBoundary := "Poincare sphere discriminator exclusion is routed through the shared AASC same-domain classifier closure"
      declared := true }
  , { item := .refinedComparisonFactorStanding
      kind := .structuralRoleCompressionBoundary
      leanAnchor := "PCRicciBridgeStandingPacket"
      truthBoundary := "Ricci flow, surgery, and classical topology are comparison standing, not proof machinery for the AASC endpoint route"
      declared := true }
  , { item := .ricciBridgeGuardExact
      kind := .leanClosedProofSpine
      leanAnchor := "ricciBridgeAudit_context_iff"
      truthBoundary := "the Ricci bridge audit is equivalent to the explicit comparison context"
      declared := true }
  , { item := .manuscriptPdfSnapshot
      kind := .manuscriptSnapshotBoundary
      leanAnchor := "papers/poincare/PROJECT_LEDGER.md"
      truthBoundary := "main.tex has current Lean names; the bundled PDF is refreshed from the Codex handoff render"
      declared := true } ]

def PoincareTruthBoundaryItems : List PoincareTruthBoundaryItem :=
  PoincareTruthBoundaryRows.map (fun row => row.item)

def PoincareTruthBoundaryDeclaredFlags : List Bool :=
  PoincareTruthBoundaryRows.map (fun row => row.declared)

def PoincareTruthBoundaryAllDeclaredBool : Bool :=
  PoincareTruthBoundaryDeclaredFlags.all id

def PoincareTruthBoundaryLeanAnchors : List String :=
  PoincareTruthBoundaryRows.map (fun row => row.leanAnchor)

def PoincareTruthBoundaryLeanAnchorsPopulatedBool : Bool :=
  PoincareTruthBoundaryLeanAnchors.all (fun anchor => !anchor.isEmpty)

def PoincareTruthBoundaryTexts : List String :=
  PoincareTruthBoundaryRows.map (fun row => row.truthBoundary)

def PoincareTruthBoundaryTextsPopulatedBool : Bool :=
  PoincareTruthBoundaryTexts.all (fun boundary => !boundary.isEmpty)

def PoincareTruthBoundaryLeanClosedCount : Nat :=
  (PoincareTruthBoundaryRows.filter
    (fun row => row.kind == PoincareTruthBoundaryKind.leanClosedProofSpine)).length

def PoincareTruthBoundaryExternalStandingCount : Nat :=
  (PoincareTruthBoundaryRows.filter
    (fun row =>
      row.kind == PoincareTruthBoundaryKind.externalTopologyStanding)).length

def PoincareTruthBoundaryStructuralBoundaryCount : Nat :=
  (PoincareTruthBoundaryRows.filter
    (fun row =>
      row.kind ==
        PoincareTruthBoundaryKind.structuralRoleCompressionBoundary)).length

def PoincareTruthBoundarySnapshotCount : Nat :=
  (PoincareTruthBoundaryRows.filter
    (fun row =>
      row.kind == PoincareTruthBoundaryKind.manuscriptSnapshotBoundary)).length

theorem PoincareTruthBoundaryRows_count_eq :
    PoincareTruthBoundaryRows.length = 7 := by
  rfl

theorem PoincareTruthBoundaryItemCatalog_count_eq :
    PoincareTruthBoundaryItemCatalog.length = 7 := by
  rfl

theorem PoincareTruthBoundaryItems_match_catalog :
    PoincareTruthBoundaryItems = PoincareTruthBoundaryItemCatalog := by
  rfl

theorem PoincareTruthBoundaryItemTitlesPopulatedBool_eq_true :
    PoincareTruthBoundaryItemTitlesPopulatedBool = true := by
  rfl

theorem PoincareTruthBoundaryAllDeclaredBool_eq_true :
    PoincareTruthBoundaryAllDeclaredBool = true := by
  rfl

theorem PoincareTruthBoundaryLeanAnchorsPopulatedBool_eq_true :
    PoincareTruthBoundaryLeanAnchorsPopulatedBool = true := by
  rfl

set_option maxRecDepth 10000 in
theorem PoincareTruthBoundaryTextsPopulatedBool_eq_true :
    PoincareTruthBoundaryTextsPopulatedBool = true := by
  rfl

theorem PoincareTruthBoundaryLeanClosedCount_eq :
    PoincareTruthBoundaryLeanClosedCount = 3 := by
  rfl

theorem PoincareTruthBoundaryExternalStandingCount_eq :
    PoincareTruthBoundaryExternalStandingCount = 0 := by
  rfl

theorem PoincareTruthBoundaryStructuralBoundaryCount_eq :
    PoincareTruthBoundaryStructuralBoundaryCount = 2 := by
  rfl

theorem PoincareTruthBoundarySnapshotCount_eq :
    PoincareTruthBoundarySnapshotCount = 1 := by
  rfl

def PoincareTruthBoundaryMetadataComplete : Prop :=
  PoincareTruthBoundaryRows.length = 7 /\
  PoincareTruthBoundaryItemCatalog.length = 7 /\
  PoincareTruthBoundaryItems = PoincareTruthBoundaryItemCatalog /\
  PoincareTruthBoundaryItemTitlesPopulatedBool = true /\
  PoincareTruthBoundaryAllDeclaredBool = true /\
  PoincareTruthBoundaryLeanAnchorsPopulatedBool = true /\
  PoincareTruthBoundaryTextsPopulatedBool = true

def PoincareTruthBoundaryCountComplete : Prop :=
  PoincareTruthBoundaryLeanClosedCount = 3 /\
  PoincareTruthBoundaryExternalStandingCount = 0 /\
  PoincareTruthBoundaryStructuralBoundaryCount = 2 /\
  PoincareTruthBoundarySnapshotCount = 1

def PoincareTruthBoundaryLedgerComplete : Prop :=
  PoincareTruthBoundaryMetadataComplete /\
  PoincareTruthBoundaryCountComplete /\
  PoincareEndpointStatusLedgerComplete

theorem PoincareTruthBoundaryMetadataComplete_holds :
    PoincareTruthBoundaryMetadataComplete := by
  refine And.intro PoincareTruthBoundaryRows_count_eq ?_
  refine And.intro PoincareTruthBoundaryItemCatalog_count_eq ?_
  refine And.intro PoincareTruthBoundaryItems_match_catalog ?_
  refine And.intro PoincareTruthBoundaryItemTitlesPopulatedBool_eq_true ?_
  refine And.intro PoincareTruthBoundaryAllDeclaredBool_eq_true ?_
  refine And.intro PoincareTruthBoundaryLeanAnchorsPopulatedBool_eq_true ?_
  exact PoincareTruthBoundaryTextsPopulatedBool_eq_true

theorem PoincareTruthBoundaryCountComplete_holds :
    PoincareTruthBoundaryCountComplete := by
  refine And.intro PoincareTruthBoundaryLeanClosedCount_eq ?_
  refine And.intro PoincareTruthBoundaryExternalStandingCount_eq ?_
  refine And.intro PoincareTruthBoundaryStructuralBoundaryCount_eq ?_
  exact PoincareTruthBoundarySnapshotCount_eq

set_option maxRecDepth 10000 in
theorem PoincareTruthBoundaryLedgerComplete_holds :
    PoincareTruthBoundaryLedgerComplete := by
  refine And.intro PoincareTruthBoundaryMetadataComplete_holds ?_
  refine And.intro PoincareTruthBoundaryCountComplete_holds ?_
  exact PoincareEndpointStatusLedgerComplete_holds

end Poincare
end Papers
end MaleyLean
