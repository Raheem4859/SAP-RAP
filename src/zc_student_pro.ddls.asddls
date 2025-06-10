@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'STUDENT Projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_STUDENT_PRO
provider contract transactional_query
  as projection on zstudent_info_i
  
{
      @EndUserText.label: 'Student Id'
  key Id,
      @EndUserText.label: 'Firstname'
      Firstname,
      @EndUserText.label: 'Lastname'
      Lastname,
      @EndUserText.label: 'Student Age'
      Studentage,
      @EndUserText.label: 'Cource'
      Cource,
      @EndUserText.label: 'Duration'
      Duration,
      @EndUserText.label: 'Status'
      Status,
      @EndUserText.label: 'Gender'
      Gender,
      @EndUserText.label: 'Date of Birth'
      Dob,
      
      _upload : redirected to composition child ZC_STD_UPLOADFILE
}
 