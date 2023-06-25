import { LightningElement,track,wire } from 'lwc';
import getAccount from '@salesforce/apex/searchAccount.getAccount';


export default class GetAccountFromInput extends LightningElement {
     inputVal;
     Accounts;
     error;
    handleChange(event){
        this.inputVal=event.target.value;

    }
    handleSubmit(){
        console.log('Account Value ' +this.inputVal);
        getAccount({Name:this.inputVal})
        .then(result=>{
            this.Accounts=result;
            this.error = undefined;
            console.log('Account '+JSON.stringify(this.Accounts));
        })
        .catch(error=>{
            this.error=error;
            this.Accounts=undefined;
        });

        

    }
}