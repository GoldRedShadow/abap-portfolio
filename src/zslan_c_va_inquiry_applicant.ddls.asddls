@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Urlaubsantrag Beantrager'
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZSLAN_C_VA_INQUIRY_APPLICANT as projection on ZSLAN_R_VA_INQUIRY_APPLICANT
{
    key InquiryUuid,
    ApplicantUuid,
    ApproverUuid,
    BeginDate,
    EndDate,
    VacationDays,
    CommentText,
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Applicant
}
