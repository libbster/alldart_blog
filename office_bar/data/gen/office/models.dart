// data/gen/office/models.dart 
 
class OfficeModels extends DomainModels { 
 
  OfficeModels(Domain domain) : super(domain) { 
    add(fromJsonToBarEntries()); 
  } 
 
  BarEntries fromJsonToBarEntries() { 
    return new BarEntries(fromMagicBoxes( 
      officeBarModelJson, 
      domain, 
      OfficeRepo.officeBarModelCode)); 
  } 
 
} 
 




