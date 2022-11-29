@istest
public class TestVerifyDate {
    @istest
    static void VerifyDate() {
        Date Result = VerifyDate.CheckDates(date.newInstance(2008, 1, 1), date.newInstance(2009, 1, 1));
        System.assertEquals(date.newInstance(2008, 1, 31) , Result);
    }
    @istest
    static void VerifyDate2() {
        Date Result = VerifyDate.CheckDates(date.newInstance(2022, 1, 1), date.newInstance(2022, 1, 20));
        System.assertEquals(date.newInstance(2022, 1, 20), Result);
    }
    @istest
    static void VerifyDate3() {
        Date Result = VerifyDate.CheckDates(date.newInstance(2022, 8, 1), date.newInstance(2022, 7, 1));
        System.assertEquals(date.newInstance(2022, 8, 31) , Result);
    }

    @istest
    static void shouldInsertAccount(){
        VerifyDate nameAccount = new VerifyDate();
        nameAccount.insertAccount('Carlos', 80);
        list<Account> insertedAccount = [SELECT name FROM Account WHERE name = 'Carlos'];

        system.assert(!insertedAccount.isEmpty());
        for (account Record : insertedAccount) {
            system.assertEquals('Carlos', Record.name);
        }
        
    }
}
