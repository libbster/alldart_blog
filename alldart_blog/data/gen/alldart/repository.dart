// data/gen/alldart/repository.dart 
 
class AlldartRepo extends Repo { 
 
  static final alldartDomainCode = "Alldart"; 
  static final alldartBlogModelCode = "Blog"; 
 
  AlldartRepo([String code="AlldartRepo"]) : super(code) { 
    _initAlldartDomain(); 
  } 
 
  _initAlldartDomain() { 
    var alldartDomain = new Domain(alldartDomainCode); 
    domains.add(alldartDomain); 
    add(new AlldartModels(alldartDomain)); 
  } 
 
} 

 
