public class sendEmail {
    public static void sendEmailNotification(List<Contact> conList){
        List<Messaging.Email> listEmail = new List<Messaging.Email>();
        for(Contact Con : conList){
            if(Con.Email!=null){
                Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
                String[] emailAdd = new String[]{Con.Email};
                emailMsg.setToAddresses(emailAdd);
                emailMsg.setSenderDisplayName('Ved');
                emailMsg.setHtmlBody('Welcome');
                emailMsg.setSubject('Onboarding');
                listEmail.add(emailMsg);
            }
            Messaging.sendEmail(listEmail);
            
        }
    }

}