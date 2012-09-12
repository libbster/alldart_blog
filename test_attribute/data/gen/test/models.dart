
// data/gen/test/models.dart

class TestModels extends DomainModels {

  TestModels(Domain domain) : super(domain) {
    add(fromJsonToAttributeEntries());
  }

  AttributeEntries fromJsonToAttributeEntries() {
    return new AttributeEntries(fromMagicBoxes(
      testAttributeModelJson,
      domain,
      TestRepo.testAttributeModelCode));
  }

}




