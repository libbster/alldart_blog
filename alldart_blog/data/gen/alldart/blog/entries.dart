// data/gen/alldart/blog/entries.dart 
 
class BlogEntries extends ModelEntries { 
 
  BlogEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.findByCode("Website"); 
    entries["Website"] = new Websites(concept); 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Website") { 
      return new Websites(concept); 
    } 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Website") { 
      return new Website(concept); 
    } 
  } 
 
  fromJsonToData() { 
    fromJson(alldartBlogDataJson); 
  } 
 
  Websites get websites => getEntry("Website"); 
 
} 
