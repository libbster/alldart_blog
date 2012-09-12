// data/gen/office/bar/bottles.dart 
 
abstract class BottleGen extends ConceptEntity<Bottle> { 
 
  BottleGen(Concept concept) : super.of(concept); 
 
  BottleGen.withId(Concept concept, int volume) : super.of(concept) { 
    setAttribute("volume", volume); 
  } 
 
  int get volume => getAttribute("volume"); 
  set volume(int a) => setAttribute("volume", a); 
  
  Bottle newEntity() => new Bottle(concept); 
  
  int volumeCompareTo(Bottle other) { 
    return volume.compareTo(other.volume); 
  } 
 
} 
 
abstract class BottlesGen extends Entities<Bottle> { 
 
  BottlesGen(Concept concept) : super.of(concept); 
 
  Bottles newEntities() => new Bottles(concept); 
  
} 
 
