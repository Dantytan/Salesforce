@istest
public class TestRestrictContactByName 
{
    @istest
    static void insertInvalidName() 
    {
        try 
        {
            contact Daniel = new Contact(LastName = 'INVALIDNAME');
            insert Daniel; 
        }       
        catch (Exception errorMessage) 
        {
            system.assert(!string.isBlank(errorMessage.getMessage()));
        }
    }
}
