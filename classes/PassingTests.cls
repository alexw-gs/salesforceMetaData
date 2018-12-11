@isTest
public class PassingTests {

    @isTest static void test1() {
         System.assertEquals(1, 1);
    }
    
    @isTest static void test2() {
        System.assertEquals(2, 2);
    }
	
    @isTest static void testWithLongDelay() {
		Long startTS = System.currentTimeMillis();
		Long timeDiff = 0;
		do
		{
			timeDiff = System.currentTimeMillis() - startTS;
		}
		while(timeDiff <= 300*1000);  
        System.assertEquals(3, 3);
    }
}