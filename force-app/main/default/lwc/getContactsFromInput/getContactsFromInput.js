import { LightningElement, wire, api } from 'lwc';
import getContacts from '@salesforce/apex/fetchContacts.getContacts';
export default class GetContactsFromInput extends LightningElement {
     inputVal;
     Contacts;
    handleChange(event){
        this.inputVal = event.target.value;

    }
    handleclick(){
        console.log('Contact Name >> '+this.inputVal);
        getContacts({Con : this.inputVal})
        .then(result=>{
            this.Contacts = result;
            this.error = undefined;
            console.log('Contacts >>'+JSON.stringify(this.Contacts));
        })
    }
}