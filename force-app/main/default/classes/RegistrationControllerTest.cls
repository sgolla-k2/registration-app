@IsTest
public class RegistrationControllerTest {

    @IsTest
    static void testRegisterUser() {
        
        Test.startTest();
        
        String result = RegistrationController.registerUser(
            'Suresh',
            'Golla',
            'suresh@test.com'
        );
        
        Test.stopTest();
        
        System.assertEquals('Registration Successful', result);
        
        Contact con = [SELECT Id, Email FROM Contact WHERE Email = 'suresh@test.com' LIMIT 1];
        System.assertNotEquals(null, con);
    }
}
