@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'upload file interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zstudent_uploadfile
  as select from zstudent_uploads
association to parent zstudent_info_i as _student on $projection.Id = _student.Id
{
  key id             as Id,
      placecompany   as Placecompany,
      project        as Project,
      fresult        as Fresult,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchangedat  as Lastchangedat,
      doc_attcahment as DocAttcahment,
      mimetype       as Mimetype,
      filename       as Filename,
      _student
}
