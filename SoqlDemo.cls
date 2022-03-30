public  class SoqlDemo {
    public static void accountSoql_1() {
        List<Account> listAcc = [select ID , Name FROM Account  WHERE Name LIKE'%A%'];
        system.debug('account list=' + listAcc);
        system.debug('number of accounts=' + listAcc.size());

        

        Account acc = [select ID , Name FROM Account ORDER BY createdDate desc LIMIT 1 ];
        system.debug('latest account created is' + acc);

    }

    public static void accountSoql_2() {

        Account acc = [select ID , Name, Phone ,AccountNumber FROM Account ORDER BY createdDate desc LIMIT 1 ];

        system.debug('latest account created is' + acc);
        String accName = acc.Name;
        String accPhone = acc.Phone;

        system.debug('accName = ' + accName + ', phone is' + accPhone);
        system.debug('account number is' + acc.AccountNumber);


    }
    public static void accountSoql_3() {

        List<Account> listAcc = [select ID , Name , phone , AccountNumber FROM Account ORDER BY CreatedDate DESC];

        system.debug('all accounts' + listAcc);

        for (Account eachAccount : listAcc) {
            string accName = eachAccount.Name ; 
            String accPhone = eachAccount.Phone;
            system.debug('accName = ' + accName + ', phone is' + accPhone);
            system.debug('account number is' + eachAccount.AccountNumber);

            
        }
    }

    public static void accountSOQL_Filter(string accNameFilter) {
        List<account> listAcc = [select id, name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
    }




