 
// data/gen/office/bar/entries.dart 
 
class BarEntries extends ModelEntries { 
 
  BarEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Bottle") { 
      return new Bottles(concept); 
    } 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptException("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Bottle") { 
      return new Bottle(concept); 
    } 
  } 
 
  fromJsonToData() { 
    fromJson(officeBarDataJson); 
  } 
 
  Bottles get bottles => getEntry("Bottle"); 
 
} 

 

