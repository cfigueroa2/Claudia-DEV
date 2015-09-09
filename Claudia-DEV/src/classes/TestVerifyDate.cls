@isTest
public class TestVerifyDate {
    
    @isTest static void testCheckDateRange(){
        Date date1 = Date.newInstance(2015,01,01),
        	 date2 = Date.newInstance(2015,02,15),
             dateLast = Date.newInstance(2015,01,31);
        
        Date dtRslt = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(dateLast, dtRslt);        
        
		date2 = Date.newInstance(2015,01,15);
        
        dtRslt = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, dtRslt); 
        
    }

}