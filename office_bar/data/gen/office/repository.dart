// data/gen/office/repository.dart 
 
class OfficeRepo extends Repo { 
 
  static final officeDomainCode = "Office"; 
  static final officeBarModelCode = "Bar"; 
 
  OfficeRepo([String code="OfficeRepo"]) : super(code) { 
    _initOfficeDomain(); 
  } 
 
  _initOfficeDomain() { 
    var officeDomain = new Domain(officeDomainCode); 
    domains.add(officeDomain); 
    add(new OfficeModels(officeDomain)); 
  } 
 
} 
 
