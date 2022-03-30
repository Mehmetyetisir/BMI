public  class Carsamba {
    public string printString(string str){
        string yer = 'USA'  + str;
        return yer;

    }

    public void stringMetot(String abc){
        system.debug('Gelen stringi bu metot yazdiriyor' + abc);
}

    public void integerMetot1(integer num1, integer num2){
        decimal blm = num1/num2;
        system.debug(blm);


    }
    public integer stringMetot2(String str){

        integer lng = str.length();
        return lng;


    }

    public integer integerMetot3(integer a){
        string str1 = string.valueOf(a);
        integer aLng = str1.length();
        return aLng;
    }

    public integer datemetot(date dt){
        string dStr = string.valueOf(dt);
        integer dLng = dStr.length();
        return dLng;
    }
    public integer toplama(integer a , integer b){
        return a+b;

    }

    public integer carpma(integer c , integer d){
        integer crp = c * d;
        return crp;


    }



}
