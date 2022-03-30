public class StringDemoClass {
    public void stringMethod1() {
        string sessionDescription = 'learning string method in apex language is FUn.';

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is =' + lengthOfStr);

        string sessionDescriptionIncaps = sessionDescription.toUpperCase();
        system.debug('session desc in caps =' + sessionDescriptionIncaps);

        boolean  containsApex = sessionDescription.contains('apex');
        system.debug('has apex?' + containsApex);

        boolean  containsApex2 = sessionDescriptionIncaps.containsIgnoreCase('apex');
        system.debug('has apex 2?' + containsApex2);

        boolean  containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce?' + containsSalesforce);




    }

  
}
