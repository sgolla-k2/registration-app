public with sharing class RegistrationController {

    @AuraEnabled
    public static String registerUser(String firstName, String lastName, String email) {
        
        if(String.isBlank(firstName) || String.isBlank(lastName) || String.isBlank(email)){
            throw new AuraHandledException('All fields are required.');
        }
        
        Contact con = new Contact(
            FirstName = firstName,
            LastName = lastName,
            Email = email
        );
        
        insert con;
        
        return 'Registration Successful';
    }
}