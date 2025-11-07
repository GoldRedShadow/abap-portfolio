@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vacation Inquiry Basic View'
define root view entity ZSLAN_R_VA_INQUIRY
  as select from zslan_va_inquiry
  
  association [1..1] to ZSLAN_i_EmployeeText as _ApplicantText on $projection.ApplicantUuid = _ApplicantText.EmployeeUuid
  association [1..1] to ZSLAN_i_EmployeeText as _ApproverText  on $projection.ApproverUuid = _ApproverText.EmployeeUuid
{
  key inquiry_uuid        as InquiryUuid,

      @ObjectModel.text.element: ['ApplicantName']
      applicant_uuid      as ApplicantUuid,

      @ObjectModel.text.element: ['ApproverName']
      approver_uuid       as ApproverUuid,

      _ApplicantText.Name as ApplicantName,
      _ApproverText.Name  as ApproverName,

      begin_date          as BeginDate,
      end_date            as EndDate,
      vacation_days       as VacationDays,
      comment_text        as CommentText,
      status              as Status,

      /* Admin-Daten */
      created_by          as CreatedBy,
      created_at          as CreatedAt,
      last_changed_by     as LastChangedBy,
      last_changed_at     as LastChangedAt

}
