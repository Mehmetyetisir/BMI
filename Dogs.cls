public class Dogs {
    // public string Name;
    // public string Breed;
    // public integer Age;

    // public void Description(){
    //     system.debug('Age of' + Name + 'is'+ Age + ',its breed is' + Breed);

    // }


    List<account> acclist = [select id name,(select id,lastName FROM contacts) from account ];
    account acc = new account();
    system.debug(acclist);

}
