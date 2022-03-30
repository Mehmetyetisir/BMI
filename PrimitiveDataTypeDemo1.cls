public class PrimitiveDataTypeDemo1 {
    public void printBasicDataType1(){
        string batchName = 'Falcons 5';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' are the bestest.';
        system.debug(batchDescription);
        system.debug('total # of candidates: ' + totalCandidates);
        Decimal decValue = 27.01;
        system.debug('decimal : ' + decValue);

        Long longValue = 3146786654l;
        system.debug('long: ' + longValue);

        Object obj = 'This is a string';
        Object obj2 = 10;

        system.debug('obj = ' + obj);
        system.debug('obj2 = ' + obj2);

        ID id1 = '0015j00000WXODgAAP';
        system.debug('id is ' + id1);
    }

    public void printNewdate() {
        system.debug('create new date intance');

        Date newDate = Date.newInstance(1987, 5, 27);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        system.debug('new date = ' + newDate);
        system.debug('new date2 is = ' + newDate2);

        Date todayDate = date.today();
        system.debug('Today\'s date: ' + todayDate);

      
    }
    public void printNewTime() {
        Time  myTime = Time.NewInstance(18, 20, 2, 30);
        Time  meTime = Time.NewInstance(15, 15, 2, 20);
        system.debug('My Time: '+ myTime);
        system.debug('Me Time: ' + meTime);
    }
    public void printNewDateTime() {
        date newDate = date.today();
        time newTime = time.newInstance(22, 22, 22, 22);

        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('first datetime instance is ' + dt1);


        Datetime dt2 = Datetime.newInstance(2025, 1, 9);
        system.debug('dt 2 is' + dt2);

        Datetime dt3 = Datetime.newInstance(2025, 1, 9, 0, 0, 0);
        system.debug('dt 3 is' + dt3);

        long longTime = 134182818300L;
        Datetime dt4 = Datetime.newInstance(longTime);
        system.debug('Long time is' + dt4);

        Datetime dt5 = Datetime.newInstanceGmt(1998, 1, 28, 18, 2, 3);
        system.debug('dt 5 GMT is' + dt5);

        Datetime dt6 = datetime.now();
        system.debug('now'+ dt6);



    
    }
}
