global with sharing class AccountList
{
	public static List<Account> acctList {get; set; }
	
	
	@RemoteAction
	global static List<Account> getAccounts()
	{
		acctList = [Select Id, Name From Account];
		return acctList;
	}  
}