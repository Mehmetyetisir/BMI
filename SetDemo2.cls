public  class SetDemo2 {
    public static set<string> upperCaseSet(Set<String>  ss) {

        Set<String> returnSet = new Set<String>();

       system.debug('ss set '+ ss);
       for (string eachElement : ss) {
           system.debug('Capital cities of country ' + eachElement);
           string tempSTr = eachElement.toUpperCase();
           returnSet.add(tempSTr);
           
       }

        return returnSet;
    }
   
}
