public  class ListDemo {
    public static String candidatesList(integer i) {

        List<String>    listCandidates =new  List<string>();
        
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug(listCandidates);
        string returnString = '';
        if (i < listCandidates.size()){
            returnString = listCandidates[i];
        } else {
            returnString = 'No value found.Stay in Limits';
        }
        return returnString;
        


    }
    public static void randomIntegerList(){

        List<integer>  listInteger = new  List<integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        

        integer index3Valuev2= listInteger[3];
        // or
        //integer index3Valuev2=listInteger.get(3);
        system.debug('list of index3 Value' + index3Valuev2);
        system.debug('List of integers'+ listInteger);

    }
    public static void allCats(){
        cat  falconsCat =new Cat('fluffykins', 'white');
        cat  vitapCat =new Cat('Simba', 'brown');
        cat  Cats3 =new Cat('Smoky', 'Gray');

        List<Cat>  cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        cats.add(Cats3);
        cats.add(falconsCat);
        system.debug(Cats);
    }

    public static void iterateIntegerList(){

        List<integer>  listInteger = new  List<integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(88);
        for (integer eachInteger:  listInteger){

        system.debug(eachInteger);
        }
        //system.debug(listInteger);
    }
}
