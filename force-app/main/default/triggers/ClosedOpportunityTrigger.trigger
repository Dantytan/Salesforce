trigger ClosedOpportunityTrigger on Opportunity ( after insert, after update) {
    if (Trigger.isAfter) 
    {
        if (Trigger.isInsert) 
        {
            OpportunitieTriggerHelper.createNewTaskByOpportunityRecord(trigger.new);
        } 
        else if (Trigger.isUpdate) 
        {
            OpportunitieTriggerHelper.createNewTaskByOpportunityRecord(trigger.new);
        }    
    }
}