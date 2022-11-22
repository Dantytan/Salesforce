public class AccountHandler {
    public static Account insertNewAccount(String newAcount){


        try {
            Account nombre = new Account(Name=newAcount);
            insert nombre;   
            
            return nombre;
        } catch (Exception excep) {
            return null;
        }
}  
}


