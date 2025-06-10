@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view of student uplaod file'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_STD_UPLOADFILE
  as projection on zstudent_uploadfile
{
      @EndUserText.label: 'Key Id'
  key Id,
      @EndUserText.label: 'Placed Company'
      Placecompany,
      @EndUserText.label: 'Project Name'
      Project,
      @EndUserText.label: 'Result'
      Fresult,
      @EndUserText.label: 'Lastchanged at'
      Lastchangedat,
      @EndUserText.label: 'Attachment Doc Type'
      @Semantics.largeObject:{ mimeType: 'Mimetype',
      fileName: 'Filename',
      contentDispositionPreference:  #INLINE }
      DocAttcahment,
      @EndUserText.label: 'Mimetype'
      Mimetype,
      @EndUserText.label: 'Filename'
      Filename,
      
      _student : redirected to parent ZC_STUDENT_PRO
    
}
