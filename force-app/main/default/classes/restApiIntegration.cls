@RestResource(urlMapping='/api/Webhooks/Cases/*')
global with sharing class restApiIntegration {
    @HttpPost
    global static String sendResponse(){
        try{
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            System.debug('Response '+response);
        }
        catch(Exception e){
            System.debug('Exception >> '+e.getMessage());
        }
        return 'ok2';
    }

}