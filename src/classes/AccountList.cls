public with sharing class AccountList
{
    public static List<Account> getAccounts()
    {
        List<Account> acctList    = [select Id, Name From Account];
        List<Contact> contactList  = [select AccountId FROM Contact];
        
        System.debug('Account List Size ' + acctList.size() );
        System.debug('Contact List Size ' + contactList.size() );
        
        Map<Id, Account> acctMap = new Map<Id, Account>(acctList);        
        
        for (Contact contact: contactList)
        {          
            
          helloworld();
          System.debug(acctMap.get(contact.AccountId));          
        }        
        return null;
    }  
    
    @future
    public static void helloWorld()
    {
        if ( Test.isRunningTest() )
        {
            System.debug('We are running in test mode');
        }
        else
        {
            System.debug('Hello WOrld');            
        }
    }
}