@isTest
public class rankHandlerTest {
    @isTest
    private static void test1() {
        RankHandler r1 = new RankHandler();
        string p1 = r1.rankPrice(1);
        system.assertEquals('Gold', p1);
        string p2 = r1.rankPrice(2);
        system.assertEquals('Silver', p2);
        string p3 = r1.rankPrice(3);
        system.assertEquals('Bronze', p3);
        string p4 = r1.rankPrice(6);
        system.assertEquals('Top 10 certificate', p4);
        string p5 = r1.rankPrice(30);
        system.assertEquals('Participation certificate', p5);
    }
    @isTest
    private static void test2(){
        RankHandler r2 = new RankHandler();
        string p6 = r2.rankPriceSwitch(1);
        system.assertEquals('Gold', p6);
        string p7 = r2.rankPriceSwitch(2);
        system.assertEquals('Silver', p7);
        string p9 = r2.rankPriceSwitch(6);
        system.assertEquals('Top 10', p9);
        string p10 = r2.rankPriceSwitch(30);
        system.assertEquals('Participation certificate', p10);
        
    }
}