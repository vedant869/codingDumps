import { LightningElement } from 'lwc';
import getContactDetails from '@salesforce/apex/ContactDetailsFromInput.getContactDetails'

const columns = [
    { label: 'Name', fieldName: 'name' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' }
];

export default class DisplayContact extends LightningElement {




    inputVal;
    Contacts;
    handleChange(event){
        this.inputVal = event.target.value;
        console.log('Input >> '+inputVal); 
    }
    handleSubmit(){
        getContactDetails({Con:this.inputVal}){
            then(result=>
             this.Contacts=result,
             this.error = undefined   )

        }


    }

    

}