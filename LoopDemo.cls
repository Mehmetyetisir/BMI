public  class LoopDemo {
    public void print_int_while(){
        integer count = 1;
        while (count <= 25) {
            system.debug(count);
            count ++; 

        }
    }
    public void print_N_numbers(integer n){
        // for  init        condition     increment
        for (integer i=0;    i<n ;        i++){
            system.debug(i);
        }
    }

    public void print_N_odd_numbers(integer startInt , integer endInt){

        for ( integer i = startInt ; i<= endInt;  i++){
            integer modI = math.mod(i, 2);
            if (modI==1) {
                system.debug(i);
            }
        }
    }

}
