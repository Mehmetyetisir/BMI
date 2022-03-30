public class PlayingWithDates {
    public void printDateOutput() {
        date  newdate = date.today();
        system.debug('Today date is:' + date.today());
        
        date  newInstance = date.newInstance(2789, 11, 5);
        system.debug('New date is:' + newInstance);
        
        date  newInstance2 = date.newInstance(1459, 3, 4);
        system.debug('New date2 is:' + newInstance2);

        integer  dayInt = 4;
        integer  monthInt = 3;
        integer  yearInt = 2022;
        system.debug('Anoter date is:' date.newInstance(yearInt, monthInt, dayInt));

        date storingDate =date.newInstance(yearInt, monthInt, dayInt);
        system.debug('Storing date is :'  + storingDate);

       // date newdate3=mydate.adddays(67)
        system.debug('After 67 days is:' + date.today().adddays(67))

        


    }
}

// Print today's date.
// 2. Create an instance of a date for 5th November 2789.
// 3. Create an instance of a date for 4th March 1459.
// 4. Create three Integer variables (dayInt, monthInt, yearInt) for storing day, month, year
// respectively and provide some default values in them.
// 5. Using the three Integer variables (dayInt, monthInt, yearInt) create a new date instance
// and save it in a new variable.
// 6. Print the date which is exactly 67 days after today.
// 7. Find and print a date which was exactly 7 months earlier than today.
// 8. Find and print a date which was exactly 895 days earlier than today.
// 9. Find and print a date which was exactly 59 years earlier than today.
// 10. Print the date which is exactly 278 years after today