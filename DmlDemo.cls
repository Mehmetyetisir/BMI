public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        acc.Phone = '325662255';
        
        insert acc;
        system.debug(acc);

        acc.Name = 'Salesforse Inc.';
        update acc;

    }
   
    public static void dmlUpdateDemo(){
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
       // acc.Phone = '325662255';
        system.debug('Pending Insert:' + acc);

        insert acc;
        system.debug('Insert:' + acc);


        acc.Name = 'Salesforse Inc.';
        update acc;
        system.debug('Updae:' + acc);

    }
    public static void dmlUpdateDemo_3() {
    
        Account acc = [select name FROM account WHERE name like  'Softinnovas' LIMIT 1];
         acc.Name ='SoftInnovas Inc.';  
                    
        update acc;
        system.debug('Updated acc = ' + acc);
    }
    public static void dmlUpdateDemo_2() {
        
        Account  acc = [select id, name FROM Account where name like 'SoftInnovas%' LIMIT 1];
        Contact cnt = new Contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;       
        insert cnt;
    }
    public static void dmMultipleRecordInsert_right(){
        List<Account> listAcc =  new List<Account>();

        Account acc1 = new account();
        acc1.name='acc 1';
        listAcc.add(acc1);

        Account acc2 = new account();
        acc2.name='acc 2';
        listAcc.add(acc2);

        Account acc3 = new account();
        acc3.name='acc 3';
        listAcc.add(acc3);

        insert listAcc;

    }

    


}
