trigger AccountAddressTrigger on Account (before insert, before update, before delete, after insert, after update, after delete) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            AccountTriggerHelper.UpdateShippingPostalCode(Trigger.new);
        } else if (Trigger.isUpdate) {
            AccountTriggerHelper.UpdateShippingPostalCode(Trigger.new);
        }  
        else if (Trigger.isDelete) {
           
        }       
         
    }     else if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            
        } else if (Trigger.isUpdate) {
     
        }  
        else if (Trigger.isDelete) {
           
        }            
    }


}