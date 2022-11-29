public class RandomContactFactory 
{
public static List<Contact> generateRandomContacts(integer NumberOfCreatedContacts , string lastnameContacts) 
    {
		List<Contact> toGenerate = new List<Contact>();
		for (Integer i = 0; i < NumberOfCreatedContacts; i++)
		{
			Contact newContact = new Contact(FirstName = lastnameContacts + '' +i);
			toGenerate.add(newContact);
		}
        return toGenerate;
	} 

}


