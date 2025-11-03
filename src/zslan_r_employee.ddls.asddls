@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Basic View'
define root view entity ZSLAN_R_EMPLOYEE as select from zslan_employee

association [1..1] to ZSLAN_i_EmployeeText as _EmployeeText on $projection.EmployeeUuid = _EmployeeText.EmployeeUuid

{
    @ObjectModel.text.element: ['Employeename']
    key employee_uuid as EmployeeUuid,
    employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    entry_date as EntryDate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    _EmployeeText.Name as EmployeeName
    
}
