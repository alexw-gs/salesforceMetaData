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
		HttpRequest req = new HttpRequest();
		req.setEndpoint('http://1.cuzillion.com/bin/resource.cgi?sleep=' + 500);
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
		Long duration = System.currentTimeMillis() - startTS;
		System.debug('Duration: ' + duration + 'ms');
        System.assertEquals(2, 2);
    }
}