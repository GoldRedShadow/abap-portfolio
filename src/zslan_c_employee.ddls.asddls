@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZSLAN_C_EMPLOYEE
  as projection on ZSLAN_R_EMPLOYEE
  // 1. Urlaubsansprüche: [0..*] von Mitarbeiter zu Ansprüchen
  association [0..*] to ZSLAN_C_VA_CLAIM             as _Claims    on _Claims.EmployeeUuid = $projection.EmployeeUuid

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
      @Search.fuzzinessThreshold: 0.7
      full_name,
      @Search.defaultSearchElement: true
      EntryDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Claims
     
      
}
