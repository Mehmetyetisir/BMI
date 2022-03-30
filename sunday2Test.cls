@isTest
public  class sunday2Test {
    @isTest
    private static void createOfAccounttest1(){
        Sunday2.createOfAccount('TestAccount');
        List<Account> acclist=[select id , name from account];
        system.assertEquals('TestAccount', acclist[0].name,'Account ismini kontrol et');
        List<Contact> conlist=[select id,lastName from contact];
        system.assertEquals(5, conlist.size(),'contactlarin sayisi');
        


    }
    
}
