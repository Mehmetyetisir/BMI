
public  class setDemo {
    public static void citySet(){

        set <string>    cities  = new   Set<String>();

        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        system.debug('set of cities  ' + cities);
        

    }

    public static void randomIntegerSet(){

        set <integer>    setInteger  = new   Set<integer>();

        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(15);
       
        system.debug('set of random integers  ' + setInteger);
        
    }

    public static set<integer>  setFromList(list<integer> intList){
        set <integer>    intSet  = new   Set<integer>();
        intSet.addAll(intList);
        return intSet;

    }
    
  
}
