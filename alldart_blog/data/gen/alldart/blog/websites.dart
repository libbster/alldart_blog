// data/gen/alldart/blog/websites.dart 
 
abstract class WebsiteGen extends ConceptEntity<Website> { 
 
  WebsiteGen(Concept concept) : super.of(concept); 
 
  WebsiteGen.withId(Concept concept, String name) : super.of(concept) { 
    setAttribute("name", name); 
  } 
 
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  Website newEntity() => new Website(concept); 
  
  int nameCompareTo(Website other) { 
    return name.compareTo(other.name); 
  } 
 
} 
 
abstract class WebsitesGen extends Entities<Website> { 
 
  WebsitesGen(Concept concept) : super.of(concept); 
 
  Websites newEntities() => new Websites(concept); 
  
} 