/-
Lean-facing formalization map for the Poincare AASC endpoint manuscript.
The declarations below are signatures/anchors only. They record the stabilized
manuscript theorem surface for routing audit; this file is deliberately outside
the active axiom-free proof surface.
-/

namespace Poincare.EndpointClosure

axiom ClosedSimplyConnectedThreeManifold : Type
axiom PCCarrier : Type
axiom SphereRead : PCCarrier -> Prop

axiom OfficialPCEndpoint : Prop
axiom OfficialPCEndpointUse : PCCarrier -> Prop
axiom PCCarrierInstantiated : PCCarrier -> Prop
axiom StandardPCCarrierInstantiated : PCCarrier -> Prop
axiom PCCarrierAdequate : PCCarrier -> Prop
axiom PCEndpointAdequate : PCCarrier -> Prop
axiom PCKernelInstantiated : PCCarrier -> Prop
axiom PCLossOfNonDegenerateEndpointStatus : PCCarrier -> Prop
axiom PCLocalKernelPacketK1K13 : PCCarrier -> Prop

axiom PCNeg : PCCarrier -> Prop
axiom StdPCNeg : PCCarrier -> Prop
axiom SphereBridgeImgExclPC : PCCarrier -> Prop
axiom SphereBridgeSeparatorBranchPC : PCCarrier -> Prop
axiom OfficialPCNegativeResolution : PCCarrier -> Prop
axiom PCNegEndpointOccupation : PCCarrier -> Prop
axiom ThmSphereDiscPC : PCCarrier -> Prop
axiom EndpointGovPC : PCCarrier -> Prop
axiom IndependentSphereDiscPC : PCCarrier -> Prop

inductive PCEndpointStatus where
  | positive
  | separator

axiom PCEndpointStatusOccupation :
  PCCarrier -> PCEndpointStatus -> Prop

axiom PCGovernedEndpointUse : PCCarrier -> Prop
axiom PCNegativeGovernedEndpointUse : PCCarrier -> Prop

inductive PCNegUseKind where
  | proofSupportObservation
  | endpointResolvingNegativeTheorem
  | endpointResolvingNonGovernance
  | carrierChangingNegativeClaim
  | bookkeepingOnlyExpression

axiom PCNegUseClassification : PCNegUseKind -> Prop

axiom pcEndpointUnderAudit_pointwiseUse
    {M : PCCarrier} :
    OfficialPCEndpoint -> OfficialPCEndpointUse M

axiom pcEndpointUnderAudit_binds_pointwise
    {M : PCCarrier} :
    OfficialPCEndpoint ->
      OfficialPCEndpointUse M /\ PCCarrierInstantiated M

axiom pcEndpointAdequacy_forces_kernel_roles
    {M : PCCarrier} :
    PCEndpointAdequate M -> PCKernelInstantiated M

axiom pcEndpointUse_instantiates_kernel
    {M : PCCarrier} :
    OfficialPCEndpointUse M -> PCKernelInstantiated M

axiom pcNeg_iff_standardNegative
    {M : PCCarrier} :
    PCNeg M <-> StdPCNeg M

axiom pcStandardNegative_iff_sphereBridgeImageExclusion
    {M : PCCarrier} :
    StdPCNeg M <-> SphereBridgeImgExclPC M

axiom pcNeg_iff_sphereBridgeImageExclusion
    {M : PCCarrier} :
    PCNeg M <-> SphereBridgeImgExclPC M

axiom pcSphereBridgeImageExclusion_iff_separatorBranch
    {M : PCCarrier} :
    SphereBridgeImgExclPC M <-> SphereBridgeSeparatorBranchPC M

axiom pcNeg_iff_sphereBridgeSeparatorBranch
    {M : PCCarrier} :
    PCNeg M <-> SphereBridgeSeparatorBranchPC M

axiom pcNegativeOccupation_nonoptional
    {M : PCCarrier} :
    OfficialPCEndpointUse M -> PCCarrierInstantiated M ->
      PCNeg M -> SphereBridgeSeparatorBranchPC M

axiom pcBridgeImageExclusion_endpointUsed_theoremLevelDiscriminator
    {M : PCCarrier} :
    SphereBridgeImgExclPC M -> OfficialPCNegativeResolution M ->
      ThmSphereDiscPC M

axiom pcEndpointResolvingNonGovernance_hiddenFifthCase_impossible :
    Not (PCNegUseClassification PCNegUseKind.endpointResolvingNonGovernance)

axiom pcOfficialNegativeResolution_endpointStatusGovernance
    {M : PCCarrier} :
    OfficialPCNegativeResolution M -> EndpointGovPC M

axiom pcEndpointGovernance_independentSphereDiscriminator
    {M : PCCarrier} :
    EndpointGovPC M -> IndependentSphereDiscPC M

axiom pcNeg_impossible
    {M : PCCarrier} :
    Not (PCNeg M)

axiom sphereRead_forced
    {M : PCCarrier} :
    SphereRead M

axiom pcEndpoint_officialCorrespondence :
    (forall M : PCCarrier, SphereRead M) -> OfficialPCEndpoint

axiom officialPCEndpoint_of_aascContext :
    OfficialPCEndpoint

axiom PCRicciFlowStanding : PCCarrier -> Prop
axiom PCSurgeryStanding : PCCarrier -> Prop
axiom PCClassicalTopologyStanding : PCCarrier -> Prop
axiom PCRicciBridgeStanding : PCCarrier -> Prop
axiom RicciBridgeAudit : PCCarrier -> Prop

axiom ricciBridgeAudit_context_iff
    {M : PCCarrier} :
    RicciBridgeAudit M <-> PCRicciBridgeStanding M /\ SphereRead M

end Poincare.EndpointClosure
