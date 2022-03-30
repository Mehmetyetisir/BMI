public class datetimeMethodsDemo {
    public void calculateAgelnMonths(){


        date birthDate = date.newInstance(1987, 5, 12);
        date todayDate = date.today();

        integer  ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('My age in Months=' + ageInMonths);



    }
    public void calculateAgelnDays(){


        date birthDate = date.newInstance(1987, 5, 12);
        date todayDate = date.today();
        integer ageInDays =  birthDate.daysBetween(todayDate);
        system.debug('My age in Days=' + ageInDays);

    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date = ' + subscriptionEndDate);

        Integer  endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date year is  ' + endDateYear);

        Integer  endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is  ' + endDateMonth);

        Integer  endDateDay = subscriptionEndDate.day();
        system.debug('subscription end date day is  ' + endDateDay);


    }

    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();
        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('Offer will end on:' + dtOfferEnd);
        date OfferEndDate = dtOfferEnd.date();
        system.debug('offer end date is' + OfferEndDate);

    }
    public boolean leapYearCheck(date dt) {
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }

}
