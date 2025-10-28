@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Basic View'
define root view entity ZSLAN_R_EMPLOYEE as select from zslan_employee


{
    key employee_uuid as EmployeeUuid,
    employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    concat_with_space( first_name, last_name, 1 ) as full_name,
    entry_date as EntryDate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
    
}
