@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Employee Text'
define view entity ZSLAN_i_ApplicantText as select from zslan_va_inquiry
{
    key applicant_uuid as ApplicantUuid,
    approver_uuid as FirstName,
    begin_date as LastName
    
    
}
