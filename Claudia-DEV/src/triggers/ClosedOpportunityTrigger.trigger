trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    
    List<Task> NewTasks = new List<Task>();
    
    for(Opportunity op : Trigger.New){
        if(op.StageName == 'Closed Won'){
           NewTasks.add(new Task(whatID=op.Id, Subject = 'Follow Up Test Task')) ;
        }     
        
    }
   
    if(NewTasks.size() > 0){
        insert NewTasks;
    }
    
}