public class NewCaseListController {
    public List<Case> getNewCases(){
        
        List<Case> caseLst = Database.query('SELECT Id, CaseNumber ' +
                                            'FROM CASE ' +
                                            'WHERE Status = \'New\'');
        
        return caseLst;
        
    }
}