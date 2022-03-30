public class opportunityTaskSchedule implements Schedulable {
    public void execute(SchedulableContext ctx) {
        OpportunityBatchApex1 otc=new OpportunityBatchApex1();
        string sch='0 2 13 * * '
        Database.executeBatch(otc, 10);
    }
}
