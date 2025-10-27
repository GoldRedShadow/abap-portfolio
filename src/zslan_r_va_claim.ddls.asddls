@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Urlaubsantrag Basic View'
define view entity ZSLAN_R_VA_CLAIM as select from zslan_va_claim
association to parent ZSLAN_R_EMPLOYEE as _Claim 
    on $projection.EmployeeUuid = _Claim.EmployeeUuid
{
    key claim_uuid as ClaimUuid,
    employee_uuid as EmployeeUuid,
    year_of_claim as YearOfClaim,
    vacation_days as VacationDays,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    //Association
    _Claim
}
