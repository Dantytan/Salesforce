public class ContactAndLeadSearch {
    public Static list<List< sObject>> searchContactsAndLeads(String matching) {
        List<List<sObject>> searchList = [FIND :matching IN NAME FIELDS
        RETURNING Lead(Name),Contact(FirstName,LastName,Department)];

        return searchList;
    }
}


