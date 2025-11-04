@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZSLAN_C_EMPLOYEE
  as projection on ZSLAN_R_EMPLOYEE

  association [0..*] to ZSLAN_C_VA_CLAIM             as _Claim    on _Claim.EmployeeUuid = $projection.EmployeeUuid
  association [0..*] to ZSLAN_C_VA_INQUIRY             as _APPROVER   on _APPROVER.ApproverUuid = $projection.EmployeeUuid
  association [0..*] to ZSLAN_C_VA_INQUIRY             as _APPLICANT   on _APPLICANT.ApplicantUuid = $projection.EmployeeUuid
  
 

{
  key EmployeeUuid,
      @Search.defaultSearchElement: true
      EmployeeId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      FirstName,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      LastName,

      @Search.defaultSearchElement: true
      EntryDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Claim,
      _APPROVER,
      _APPLICANT
      
     
      
}
