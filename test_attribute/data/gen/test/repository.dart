
class TestRepo extends Repo {

  static final testDomainCode = "Test";
  static final testAttributeModelCode = "Attribute";

  TestRepo([String code="TestRepo"]) : super(code) {
    _initTestDomain();
  }

  _initTestDomain() {
    var testDomain = new Domain(testDomainCode);
    domains.add(testDomain);
    add(new TestModels(testDomain));
  }

}


