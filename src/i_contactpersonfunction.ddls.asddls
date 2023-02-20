@AbapCatalog.sqlViewName: 'I_MD_FUNCTION'
@EndUserText.label: 'Value Help for Function of Contact Person'
@VDM.viewType: #BASIC
@Analytics : { dataCategory: #DIMENSION }
@ObjectModel.sapObjectNodeType.name: 'BPContactPersonFunction'
@ObjectModel.representativeKey: 'ContactPersonFunction'
@Search.searchable: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER

define view I_ContactPersonFunction
  as select from tb912
  association [0..*] to I_ContactPersonFunctionT as _Text on $projection.ContactPersonFunction = _Text.ContactPersonFunction
{
  key ContactPersonFunction
}