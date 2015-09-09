public class ContactAndLeadSearch {
	
    public static List<List< SObject>> searchContactsAndLeads(String srch){
                    
     //   Contact cnt = new Contact(FirstName = 'Adam', LastName = 'Smith');
     //   insert cnt;
        
    //    Lead ld = new Lead(LastName = 'Smith', Company='Tesco', Status = 'Open - Not Contacted' );
    //    insert ld;
        
        List<List< SObject>> srchList = [FIND 'Smith' IN NAME FIELDS RETURNING 
                                         Contact(FirstName, LastName), Lead(FirstName, LastName)];
        
        return srchList;
        
    }
}