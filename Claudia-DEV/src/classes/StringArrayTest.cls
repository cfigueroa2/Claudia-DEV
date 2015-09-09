public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer num){
        List<String> testLst = new List<String>();
        
        for(Integer i = 0; i<num; i++){
            testLst.add('Test ' + string.valueOf(i) );
        }
        
        return testLst;
    }

}