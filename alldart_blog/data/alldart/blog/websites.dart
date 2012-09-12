// data/alldart/blog/websites.dart 
 
class Website extends WebsiteGen { 
 
  Website(Concept concept) : super(concept); 
 
  Website.withId(Concept concept, String name) : 
    super.withId(concept, name); 
 
} 
 
class Websites extends WebsitesGen { 
 
  Websites(Concept concept) : super(concept); 
 
} 


 