public with sharing class UnProgressedOpportunity implements Database.Batchable<Sobject> , Database.stateful {
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator a=Database.getQueryLocator([select id, name,ownerId, closeDate from Opportunity Where StageName !='Closed Won' and stageName='Closed Lost' and LastModifiedDate < LAST_N_DAYS:7]);
        return a;

    }

    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        List<Task> taskList = new List<Task>();
        for (Opportunity opp : scope) {
            Task tk=new Task();
            tk.Subject = 'Other';
            tk.Description ='Reminder-Please take action on the opportunity';
            tk.WhatId=opp.Id;
            tk.OwnerId=opp.OwnerId;
            tk.Status='In-Progress';
            if (opp.CloseDate < date.today()) {
                tk.ActivityDate=Date.today();
                
            }else {
                tk.ActivityDate = opp.CloseDate.addDays(-2);
            }
            taskList.add(tk);
        }
        if (!task.isEmpty()) {
            insert taskList;
            
        }

    }

    public void finish(Database.BatchableContext bc){
        

    }
}
