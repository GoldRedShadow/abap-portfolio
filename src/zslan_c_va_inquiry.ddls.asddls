@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Urlaubsantrag'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZSLAN_C_VA_INQUIRY
  as projection on ZSLAN_R_VA_INQUIRY
{
    key InquiryUuid,
    ApplicantUuid,
    ApplicantName,
    ApproverUuid,
    ApproverName,
    BeginDate,
    EndDate,
    VacationDays,
    CommentText,
    Status,
    CreatedAt,
    CreatedBy,
    LastChangedAt,
    LastChangedBy
}
