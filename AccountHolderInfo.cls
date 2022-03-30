public  class AccountHolderInfo {
   public static List<Account> insertNewAccount(List<string> holderInfo) {
       List<Account> AccountList =new List<Account>();
       if (holderInfo.isEmpty()){
        system.debug('Your list is empty.Please , fill it out!!');

       } else {
        for (String eachList : holderInfo) {
            account acc = new account();
            acc.name = eachList;
            AccountList.add(acc);
        }
        system.debug('Accounts>>' + accountlist);
        insert AccountList;
          
       }
       
       return AccountList;      
           
    }   
   
}
/*Create an Apex class that inserts new accounts named after an incoming parameter as list of string. If the accounts are successfully inserted, the method should return the List of account records. If a parameter is blank than we should show the error message from class and the method should return null.
The Apex class must be called AccountHandlerInfo and be in the public scope
The Apex class must have a public static method called insertNewAccount
The method must accept an incoming List of string as a parameter, which will be used to create the Account names
The list of accounts will be created based on the list of string, that means if we are passing the list of 5 strings than 5 account records will be created
The method must insert the accounts into the system and then return the records*/