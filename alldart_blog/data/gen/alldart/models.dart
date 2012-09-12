// data/gen/alldart/models.dart 
 
class AlldartModels extends DomainModels { 
 
  AlldartModels(Domain domain) : super(domain) { 
    add(fromJsonToBlogEntries()); 
  } 
 
  BlogEntries fromJsonToBlogEntries() { 
    return new BlogEntries(fromMagicBoxes( 
      alldartBlogModelJson, 
      domain, 
      AlldartRepo.alldartBlogModelCode)); 
  } 
 
} 





