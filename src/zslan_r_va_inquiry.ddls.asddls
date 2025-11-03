@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vacation Inquiry Basic View'
define view entity ZSLAN_R_VA_INQUIRY as select from zslan_va_inquiry
association to parent ZSLAN_R_EMPLOYEE as _INQUIRY 
    on $projection.InquiryUuid = _INQUIRY.EmployeeUuid

{
    key inquiry_uuid as InquiryUuid,
    applicant_uuid as ApplicantUuid,
    approver_uuid as ApproverUuid,
    begin_date as BeginDate,
    end_date as EndDate,
    vacation_days as VacationDays,
    comment_text as CommentText,
    status as Status,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    /* Associations  */
    _INQUIRY
}
