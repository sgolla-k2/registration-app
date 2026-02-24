public with sharing class tarakarama {

    // Constructor
    public tarakarama() {

    }

    // Sample method
    public static String getGreeting(String name) {
        if(String.isBlank(name)) {
            return 'Hello Developer!';
        }
        return 'Hello ' + name + '!';
    }

    // Sample method to return Account count
    public static Integer getAccountCount() {
        return [SELECT COUNT() FROM Account];
    }
}