public class AccountInfo {
    
    public  void  AccountInfoMsg(){
        system.debug('Welcome to the world of SOQL.Please enter the character to search.');
    }
    public static void searchContacts(string key) {
        //you
        List<Contact> contactList = [select id, name, birthdate, account.description, account.industry, account.type FROM Contact where name like : '&' + key + '%'];

        for ( contact eachContact: contactList){
            string acDesc = eachContact.Account.Description;
            string acIndus = eachContact.Account.Industry;
            string acType = eachContact.Account.Type;
            system.debug(' '+ eachContact.Id + ' ' + eachContact.Name + ' ' + eachContact.Birthdate+ ' ' + acDesc + ' '+ acIndus + ' ' + acType);

        }

    }
}


/*Create one class called AccountInfo, which will have the constructor to show the welcome / greeting message, and class can have the variable and method to accept the key character to search in the name of Contact. We need to make sure that once we get that key character in the name of contact, we need to show the id of the contact, name of the contact, Birthdate of the contact, description of the Account, Industry of the Account and Type of the account. All above information needs to be printed in the debug.

Example
====================================
Welcome to the world of SOQL. Please enter the key character to search.

Input ::
es
Output ::

0035j00000KAFJIAA5 | Sean Forbes | 1939-01-02 | Account	Commerical logistics and transportation company. | Transportation | Customer - Channel
0035j00000KAFJIBAY | James Carry | 1992-08-12 | This Account is transportation company. | Transportation | Salesforce  */
