public  class Traning {
    public void exerciseMethod(string msg){
        system.debug(msg);
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum; 
    }

    public integer multiply(integer c , integer d){
        integer mul= c*d;
        return mul;
    }

    public void primitiviDataTypeDemo(string bn) {
        string batchName = bn;
        system.debug('Batch name is' + batchName);
    }

    public void myNewEx( string bn, integer candidate, boolean ac){
        string batchName= bn;
        integer totalCandidate = candidate;
        boolean  isAdminComplited = ac;


        string batchDescription = batchName + ' ' + 'are the best';
        system.debug(batchDescription);
        system.debug( 'total candidates are'+' '+ candidate);
        system.debug('is admin completed'+' '+ ac);


    }
    public boolean LeapYearCheck(date dt){

        integer year = dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;
    }
    

}
