@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Root interface'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zstudent_info_i as select from zstudent_table_i
composition[0..1] of zstudent_uploadfile as _upload 
{
    key id as Id,
    firstname as Firstname,
    lastname as Lastname,
    studentage as Studentage,
    cource as Cource,
    duration as Duration,
    status as Status,
    gender as Gender,
    dob as Dob,
    _upload
   
   
 
}
