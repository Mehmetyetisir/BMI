public class Address {
     public void homeAddress() {
         string myName= 'Mehmet';
         integer noFamily = 4;
         string  houseName= 'Apart';
         integer houseNo = 200;
         string  streetName = 'Rua Doutor';
         string  cityName = 'Sao Paulo';
         string  stateName = 'Sao Paulo';
         string  isoCode = 'SP';
         string  countryName = 'Brazil';
         string  countryIsoCode = 'Brzl';
         string  zipCode = '04750060';
         boolean currentHome = true;
         
         system.debug('My name is' + myName);
         system.debug('Total number of members in my family is' + noFamily);
         system.debug('house name:' + houseName);
         system.debug('House Number:' + houseNo);
         system.debug('Street Name:' + streetName);
         system.debug('City Name:' + cityName);
         system.debug('State Name:' + stateName);
         system.debug('State ISO Code:' + isoCode);
         system.debug('Country Name:' + countryName);
         system.debug('Country ISO Code:' + countryIsoCode);
         system.debug('Zip Code:' + zipCode);
         system.debug('Is this my current home? :' + currentHome);


        }

}
