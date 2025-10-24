@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Basic View'
define root view entity ZSLAN_R_Employee as select from zslan_employee
composition [0..*] of ZSLAN_R_VA_INQUIRY as _VA_Inquiry
{
    key employee_uuid as EmployeeUuid,
    employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    entry_date as EntryDate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    _VA_Inquiry
}
