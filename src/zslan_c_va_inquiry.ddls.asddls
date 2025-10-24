@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Urlaubsanträge'
@Metadata.allowExtensions: true
define view entity ZSLAN_C_VA_INQUIRY as projection on ZSLAN_R_VA_INQUIRY
{
    key EmployeeUuid,
    ApplicantUuid,
    ApproverUuid,
    BeginDate,
    EndDate,
    VacationDays,
    CommentText,
    Status,
    /* Associations */
    _Employee : redirected to parent ZSLAN_C_Employee
}
