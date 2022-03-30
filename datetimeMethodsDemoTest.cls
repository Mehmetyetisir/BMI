@isTest
public with sharing class datetimeMethodsDemoTest {
    @isTest
    private static void Test1(){
        datetimeMethodsDemo d1=new datetimeMethodsDemo();
        d1.calculateAgelnMonths();

    }
    @isTest
    private static void test2(){
        datetimeMethodsDemo d2=new datetimeMethodsDemo();
        d2.calculateAgelnDays();

    }
    @isTest
    private static void Test3(){
        datetimeMethodsDemo d3=new datetimeMethodsDemo();
        d3.printSubscriptionEndDate();


    }
    @isTest
    private static void Test4(){
        datetimeMethodsDemo d4=new datetimeMethodsDemo();
        d4.printOfferEndDateTime();
    
    }
    @isTest
    private static void test5() {
        //call the method which we want to test.
        DateTimeMethodsDemo d5 = new DateTimeMethodsDemo();
        date dt = date.today();
        boolean lp0 = d5.leapYearCheck(dt);
        system.assertEquals(false, lp0);
        
        date dt1 = date.newInstance(2020, 10, 10);
        boolean lp2 = d5.leapYearCheck(dt1);
        system.assertEquals(true, lp2);
    }


}
