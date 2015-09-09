public class AccountHandler {
    
    public static Account insertNewAccount(String str){
        try{          
        
        	Account acct = new Account(name = str);
        
        	insert acct;
            return acct;
            
        }
        catch(DmlException e){
            system.debug('DML Exception has occured: ' + e.getMessage());
            return null;
        }
        
        
    }

}