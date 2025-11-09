@AbapCatalog.sqlViewName: 'ZSLAN_I_EMPLOYE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Helper Employee'
define view ZSLAN_I_EMPLOYEEVH as select from zslan_employee
{
    key employee_uuid as EmployeeUuid,
    employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    entry_date as EntryDate,
    
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
}
