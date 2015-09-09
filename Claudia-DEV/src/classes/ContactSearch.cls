public class ContactSearch {
    
    public static List<Contact> searchForContacts(String nm1, String nm2){
        Contact[] cnt = [SELECT ID, Name 
                            FROM Contact 
                           WHERE LastName LIKE :nm1
                             AND MailingPostalCode LIKE :nm2];
        
        return cnt;
    }

}