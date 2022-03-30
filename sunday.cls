public class sunday {
    
    public static void printEleman(List<integer> myList){
        system.debug('Listemin Elemanlari' + myList);
        for (integer item : myList) {
            
            system.debug(item);
        }

    }
    public static void printName(List<string> nameList) {
        if (!nameList.isEmpty()) {
            for (string nm : nameList) {
                system.debug(nm);
                
            }
            
        } else {
            system.debug('Tanim bir liste gonderin.islem yapamaz');
            
        }
        
    }
    
        
    
}
