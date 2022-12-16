public class NewCaseListController {
    public list<case> getNewCases() {
        list<case> newCases = [SELECT ID, CaseNumber FROM Case WHERE Status = 'New' ];
        return newCases;
    }
}
