public class ContactSearch {
    public static list<Contact> searchForContacts(String nameString, String postal) {
       
        Contact[] cts = [SELECT Id, Name FROM Contact
                            WHERE lastname =: nameString AND MailingPostalCode =: postal ];
        return cts;
    }
}

