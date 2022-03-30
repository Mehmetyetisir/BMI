public class OpportunityBatchApex1 implements Database.Batchable<sObject> , Database.stateful{
    public integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        Database.QueryLocator  oppList=Database.getQueryLocator([select Id, closeDate, OwnerId from Opportunity where StageName !='Closed Won' and StageName !='Closed Lost' and LastModifiedDate < LAST_N_DAYS:7]);
        return oppList;
        
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> oppRecords){
        // process each batch of records
        List<Task> taskList=new List<Task>();
        for(opportunity opp1:oppRecords){
            task  tk=new task();
            tk.Subject=System.Label.Subject;
            tk.Description=System.Label.Comments;
            tk.WhatId=opp1.Id;
            tk.OwnerId=opp1.OwnerId;
            tk.Status='In-Progress';
            if(opp1.CloseDate < date.today()){
                tk.ActivityDate=Date.today();
            } else {
                tk.ActivityDate=opp1.CloseDate.addDays(-2);
            }
            taskList.add(tk);
            count++;



        }
        if(!taskList.isEmpty()){
            insert taskList;
            
        }


    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
        system.debug('Total Number of Task Created '+ count);
    }
}

