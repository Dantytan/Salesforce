public class AccountTriggerHelper {
    public static void UpdateShippingPostalCode(list<Account> newAccounts) {
        for (Account newAccount : newAccounts) {
            if ( newAccount.Match_Billing_Address__c==true) {
                newAccount.ShippingPostalCode = newAccount.BillingPostalCode;
            }
        }
    }
}
