@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Urlaubsantrag'
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZSLAN_C_VA_INQUIRY
  as projection on ZSLAN_R_VA_INQUIRY
{
    key InquiryUuId,
    ApplicantUuid,
    ApplicantName,
    ApproverUuid,
    ApproverName,
    BeginDate,
    EndDate,
    vacationdays,
    CommentText,
    Status,
    CreatedAt,
    CreatedBy,
    LastChangedAt,
    LastChangedBy,
    
    _Applicant : redirected to parent ZSLAN_C_EMPLOYEE,
    _Approver : redirected to ZSLAN_C_EMPLOYEE
}
