public  class Calculator {
    public static void welcomeMessage(){
        system.debug('Welcome to apex calc.');

    }
    public static void printNewMessage(string msg){
        system.debug(msg);
    }
    public static integer add(integer a, integer b){
        system.debug('a=' + a);
        system.debug('b=' + b);
        
        integer sum = a + b;
        return sum;
    }
    public static integer add(integer int1, integer int2, integer int3){
    
        return int1 + int2 + int3;
    }

    public static integer add(List<integer> randomIntLst){
        integer returnInteger = 0;
        for (integer eachInt : randomIntLst) {
            system.debug(eachInt);
            returnInteger += eachInt;
            
        }
        return returnInteger;
    }



}
