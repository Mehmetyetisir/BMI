public  class Humans {
    public string FullName(string firstName, string lastName){
        string fullName='';
        fullName = firstName.toUpperCase();
        fullName += ' ' + lastName.toUpperCase();
        return fullName;
    }

    public integer age(date birthdate) {
        integer a=0;
        date  today = date.today();
        integer daysage = birthdate.daysBetween(today);
        a =integer.valueOf(daysage/365);
        return a;
    }
}
