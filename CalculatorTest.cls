@isTest
public class CalculatorTest {
    @isTest
    public static void testMessages(){
        Calculator.welcomeMessage();
        Calculator.printNewMessage('This is a test message');

    }
    @isTest
    private static void addTest1(){
        integer calcAdd = Calculator.add(10, 15);
        system.assertEquals(25, calcAdd);
        
    }
    @isTest
    private static void addTest2(){
        integer calcAdd = Calculator.add(10, 15, 20);
        system.assertEquals(45, calcAdd);
        
    }
    
}  
