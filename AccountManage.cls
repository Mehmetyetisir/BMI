public  class AccountManage {
    public static void updateNewRecord() {
        List<Account> accList=[select name,description,createdDate 
                                from account where createdDate=today ];
        list<account> listUpdate=new List<Account>();
        for (Account eachList : accList) {
            eachList.description = eachList.name + ' ' + eachList.createdDate;
            listUpdate.add(eachlist);

            
        }
        if(!listUpdate.isEmpty()){
            update listUpdate;
            for (account acc3 : listUpdate) {
                
            system.debug('the name of the account is ' + acc3.Name+' '+ 'the record has been created on' + acc3.createdDate +' ' + 'the Description of the record will be ==>'+ acc3.description);
            }
        }

        
    }
}
/*Create an apex class AccountManage that updates the Description field for the newly created records with AccountHandlerInfo class. Let's make sure to use the values passed in name for account while updating the Description field. 
New value of the Description should be the combination of the Name of the account and created date of the account.
For an example, the name of the account is <<Jimmy Thakkar>> and the record has been created on <<2022-02-12T10:53:35.000+0000>> than the Description of the record will be ==> Jimmy Thakkar2022-02-12T10:53:35.000+0000*/