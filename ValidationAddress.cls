public class ValidationAddress {
    public void validateHomeAddress(){
        string houseName = 'Apart';
        string  streetName = 'Rua Douter';
        string  cityName = ' Sao Paulo';
        string  stateName = 'Sao Paulo';
        string  isoCode = 'SP';
        string  countryName = 'Brazil';
        string  countryIsoCode = 'Brzl';


        system.debug('Number of characters in the street name:' + streetName.length());
        system.debug('Check if the street name contains house name in it or not:' + streetName.contains(houseName));
        system.debug('Find if the street name contains the state iso code in it :' + streetName.contains(isoCode));
        system.debug('Convert the state iso code, country iso code, country name to upper case:' + isoCode.toUpperCase() + ' , ' + countryIsoCode.toUpperCase() + ' + ' + countryName.toUpperCase());
        system.debug('city name, state name to lower case:' + cityName.tolowerCase() + ' , ' + stateName.tolowerCase());
        system.debug('Concatenate the house name, street name and store it in a variable:' + ' , '+ houseName +' , ' + streetName );
        



    }
}
