public class OpportunitieTriggerHelper {
    public static void createNewTaskByOpportunityRecord(List<Opportunity> newOpportunities) {
        list<task> taskToCreate = new List<task>();
        for (Opportunity newOpportunity : newOpportunities) 
        {
            if ( newOpportunity.StageName == 'Closed Won') 
            {
                taskToCreate.add(
                    new Task(
                        Subject = 'Follow Up Test Task',
                        WhatId = newOpportunity.ID
                    )   
                   
                );
            }
        }
        insert taskToCreate;    
    }
}
