import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(mxfitness_modelTests.allTests),
    ]
}
#endif
