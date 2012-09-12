// data/office/bar/bottles.dart 
 
class Bottle extends BottleGen { 
 
  Bottle(Concept concept) : super(concept); 
 
  Bottle.withId(Concept concept, int volume) : 
    super.withId(concept, volume); 
 
} 
 
class Bottles extends BottlesGen { 
 
  Bottles(Concept concept) : super(concept); 
 
} 
 
