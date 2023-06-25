public class testCallOut {
    public static void restCall(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:My_named_cred/some_path');
        req.setMethod('Get');
        HttpResponse resp = http.send(req);
    }

}