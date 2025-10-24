@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vacation Inquiry Basic View'
define view entity ZSLAN_R_VA_INQUIRY
  as select from zslan_va_inquiry
  association to parent ZSLAN_R_Employee as _Employee on $projection.EmployeeUuid = _Employee.EmployeeUuid
{
  key zslan_va_inquiry.employee_uuid  as EmployeeUuid,
      zslan_va_inquiry.applicant_uuid as ApplicantUuid,
      zslan_va_inquiry.approver_uuid  as ApproverUuid,
      zslan_va_inquiry.begin_date     as BeginDate,
      zslan_va_inquiry.end_date       as EndDate,
      zslan_va_inquiry.vacation_days  as VacationDays,
      zslan_va_inquiry.comment_text   as CommentText,
      zslan_va_inquiry.status         as Status,

      _Employee
}
