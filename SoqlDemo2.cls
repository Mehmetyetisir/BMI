public  class SoqlDemo2 {
   public static void childToParent_Soql1() {
      List<Contact>  listCnt = [select id, name, account.name , Account.industry from Contact where Account.industry = 'Energy'];
      for (Contact eachContact : listCnt) {
          string accName = eachContact.Account.name;
          system.debug('contact name is ' + eachContact.name + ', its acc is' + accName);
          
      }
   }

   public static void sampleSoql4() {
       List<Account> accWithOppList = new List<Account>();
       accWithOppList = [select name, annualRevenue, (select name, amount FROM opportunities where stageName ='closed won') from Account];
       for (Account acc : accWithOppList) {
           system.debug('Account name' + acc.name + ' add its annual rev' + acc.annualRevenue);
           List<Opportunity>  listOpp = acc.opportunities;
           for (opportunity opp : listOpp) {
               system.debug('opportunity name' + opp.name);
               system.debug('opportunity amount' + opp.amount);

               
           }

           
       }
       
   }
   
}
