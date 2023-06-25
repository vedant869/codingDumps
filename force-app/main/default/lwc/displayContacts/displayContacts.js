import { LightningElement,track,wire } from 'lwc';
import returnContactList from '@salesforce/apex/getAllContacts.returnContactList';
import Name from '@salesforce/schema/Contact.Name';
import Phone from '@salesforce/schema/Contact.Phone';

const COLS = [{label:'Name ', fieldName:Name.fieldApiName},
               {label:'Phone',fieldName:Phone.fieldApiName,type:'phone'} ];

export default class DisplayContacts extends LightningElement {
    @track searchKey;
    columns = COLS;
    conName;
    @track cons;
    @track error;

    handleChange(event){
        this.conName = event.target.value;
    }


    handleSubmit(event){
        console.log('Search Key '+this.conName);
        returnContactList({SearchContacts:this.conName})
        .then(result=>{this.cons=result;this.error=undefined; console.log('result >> '+JSON.stringify(this.cons));
    })
        .catch(error=>{this.error=error;this.cons=undefined;})
        
        //returnContactList({})

    }
    

}