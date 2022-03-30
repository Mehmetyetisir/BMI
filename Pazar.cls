public class Pazar {
    public void merhaba(){
        system.debug('Nasilsiniz');
    }

    public void gulegule(){
        system.debug('Bye Bye');

        string text= 'Ilk kullanilan cumle';
        system.debug(text);
        integer textlength = text.length();
        system.debug('karacter sayisi:' + ' '+ textlength);
        string  text3 = text.toUpperCase();
        system.debug(text3);
        system.debug(text.capitalize());
        system.debug(text.containsAny('cumle'));

    }
    public void aboutDate(){

        date   newdate = Date.newInstance(2022, 10, 18);
        system.debug('Birthdate of my friend:' + ' ' + newDate);

    }

    public static integer Largest(integer a, integer b){
        if(a>b){
            return a;
        } else {
            return b;
        }
    }
    public static integer Largest2(integer a, integer b){
        return math.max(a, b);
    }

    public static integer smallest(integer x, integer y, integer z){
        if (x<=y && x<=z) {
            return x;
        }  else if (y<=x && y<=z) {
            return y;
        } else {
            return z;
        }
    }
    
} 
 