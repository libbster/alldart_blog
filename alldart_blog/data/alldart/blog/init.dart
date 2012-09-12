// data/alldart/blog/init.dart 
 
initAlldartBlog(var entries) { 
  _initWebsites(entries); 
} 

_initWebsites(var entries) {
   Websites websites = entries.websites;
   Concept websiteConcept = websites.concept;

   Website libbsterWebsite = new Website(websiteConcept);
   libbsterWebsite.name = 'Libbster';
   websites.add(libbsterWebsite);

   Website googleWebsite = new Website(websiteConcept);
   googleWebsite.name = 'Google';
   websites.add(googleWebsite);

   Website facebookWebsite = new Website(websiteConcept);
   facebookWebsite.name = 'Facebook';
   websites.add(facebookWebsite);
   
    Website twiterwebsite = new Website(websiteConcept);
    twiterwebsite.name = 'Twiter';
   websites.add(twiterwebsite);
   
    Website journaleLeMondewebsite = new Website(websiteConcept);
    journaleLeMondewebsite.name = 'Journal Le Monde';
   websites.add(journaleLeMondewebsite);
   
   Website pintrestwebsite = new Website(websiteConcept);
   pintrestwebsite.name = 'Pintrest';
   websites.add(pintrestwebsite);
 }


