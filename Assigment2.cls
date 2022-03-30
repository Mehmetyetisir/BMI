public class Assigment2 {
    
    public static void dmlInsert(integer n) {
        List<Account> crtAccts=new List<Account>();
        for (Integer i = 1; i <=n; i++) {
            Account acc1=new Account();
            acc1.name='Account'+i;
            crtAccts.add(acc1);
            
        }
        system.debug(crtAccts);
        If(!crtAccts.isEmpty()){
            insert crtAccts;
        }
        
        
    }
   public static void dmlUpdate(string upd ) {
        list<Account> ListAccount1=[select id,name from account order by CreatedDate desc limit 5];
        List<Account> updateAcc = new List<Account>();
        for (Account acc1 : ListAccount1) {
            acc1.name = acc1.name +' '+ upd;
            updateAcc.add(acc1);
            
        }
        system.debug(updateAcc);
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }

        
    }
    public static void dmlDelete() {
        List<Account> deleteLastRecord=[select name from Account where name like 'Account%'];
        delete deleteLastRecord;
        system.debug('delete all record'+deleteLastRecord);
        
    } 
}
