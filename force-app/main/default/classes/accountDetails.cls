@RestResource(urlMapping='/AccountDetails')
global class accountDetails {
    @HttpGet
    global static List<Account> returnAcc(){
        List<account> ListAcc = new List<Account>();
        RestRequest req = RestContext.request;
        String AccId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        ListAcc = [SELECT Id, Name from Account WHERE ID =: AccId];
        return ListAcc;
    }

}