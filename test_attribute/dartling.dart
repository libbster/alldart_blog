
/*
http://opensource.org/licenses/

http://en.wikipedia.org/wiki/BSD_license
3-clause license ("New BSD License" or "Modified BSD License")

Copyright (c) 2012, Dartling project authors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Dartling nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

// dartling.dart

//#import("package:unittest/unittest.dart");
#import("../unittest/unittest.dart");
#import("dart:json");
#import("dart:math");
#import("dart:uri");
//#import("package:dartling/dartling.dart");
#source("../dartling/data/domain/model/event/actions.dart");
#source("../dartling/data/domain/model/event/reactions.dart");
#source("../dartling/data/domain/model/exception/errors.dart");
#source("../dartling/data/domain/model/exception/exceptions.dart");
#source("../dartling/data/domain/model/transfer/json.dart");
#source("../dartling/data/domain/model/entities.dart");
#source("../dartling/data/domain/model/entity.dart");
#source("../dartling/data/domain/model/entries.dart");
#source("../dartling/data/domain/model/id.dart");
#source("../dartling/data/domain/model/oid.dart");
#source("../dartling/data/domain/models.dart");
#source("../dartling/data/domain/session.dart");

#source("../dartling/data/gen/app.dart");
#source("../dartling/data/gen/dartling.dart");
#source("../dartling/data/gen/generated.dart");
#source("../dartling/data/gen/specific.dart");
#source("../dartling/data/gen/tests.dart");

#source("../dartling/data/meta/attributes.dart");
#source("../dartling/data/meta/children.dart");
#source("../dartling/data/meta/concepts.dart");
#source("../dartling/data/meta/domains.dart");
#source("../dartling/data/meta/models.dart");
#source("../dartling/data/meta/neighbor.dart");
#source("../dartling/data/meta/parents.dart");
#source("../dartling/data/meta/property.dart");
#source("../dartling/data/meta/types.dart");

#source("../dartling/data/repository.dart");

#source("data/test/attribute/json/data.dart");
#source("data/test/attribute/json/model.dart");

#source("data/test/attribute/test/data.dart");
#source("data/test/attribute/test/group.dart");
#source("data/test/attribute/test/single.dart");

#source("data/test/attribute/init.dart");
#source("data/test/attribute/cities.dart");

#source("data/gen/test/attribute/entries.dart");
#source("data/gen/test/attribute/cities.dart");
#source("data/gen/test/models.dart");
#source("data/gen/test/repository.dart");

genCode() {
  var repo = new Repo();

  // change "Dartling" to "YourDomainName"
  var testDomain = new Domain("Test");

  // change dartling to yourDomainName
  // change Skeleton to YourModelName
  // change "Skeleton" to "YourModelName"
  Model testAttributeModel =
      fromMagicBoxes(testAttributeModelJson, testDomain, "Attribute");

  repo.domains.add(testDomain);

  repo.gen();
  //repo.gen(specific:false);
}

testData() {
  var testRepo = new TestRepo();

  testTestAttribute(testRepo, TestRepo.testDomainCode,
      TestRepo.testAttributeModelCode);

  //lastSingleTest(repo, "", "");
  //lastSingleTest(repo, "", "");
}

initData() {
   var testRepo = new TestRepo();
   var testModels =
       testRepo.getDomainModels(TestRepo.testDomainCode);

   var testAttributeEntries =
       testModels.getModelEntries(TestRepo.testAttributeModelCode);
   initTestAttribute(testAttributeEntries);
   testAttributeEntries.display();
   testAttributeEntries.displayJson();
}

void main() {
  //genCode();
  //testData();
  initData();
}

