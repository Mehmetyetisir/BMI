public  class Sunday2 {
    public static void createOfAccount(string nameOfAccount){
        Account acc = new Account();
        acc.Name =nameOfAccount;
        acc.Active__c='Yes';
        system.debug('Bir account basari ile olusturulde');
        insert acc;
    
    /*aynı metot o Accounta bağlı 5 tane de contact create etsin first name acoountun ismi olsun last name 'Contact' olsun ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.*/
    list<contact>  listCnt=new list<contact>();
    for(integer i=1 ; i<=5 ; i++){
        contact cnt =new contact();
        cnt.FirstName = acc.Name;
        cnt.LastName = 'Contact' + i;
        cnt.AccountId = acc.Id;
        listCnt.add(cnt);
    }
    if(!listCnt.isEmpty()){
        insert listCnt;
    }
    // aynı metotun içinde son oluşturduğumuz 5 contactı getirecek bir sorgu yazın. Account name leri ile beraber getirsin.
    

    List<Contact>  conList = [select id,name, account.name FROM Contact ORDER BY CreatedDate desc LIMIT 5 ];
    system.debug( 'enson olusturulan list'+ conList);
    for(contact c : conList){
        System.debug(c);
    }
    
    
    }

}

