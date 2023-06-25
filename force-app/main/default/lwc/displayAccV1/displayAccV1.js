import { LightningElement,wire } from 'lwc';
import returnAcc from '@salesforce/apex/displayAccV1.returnAcc';

export default class DisplayAccV1 extends LightningElement {
    inputVal;
    account;
    error;
    handleChange(event){
        this.inputVal = event.target.value;
    }
    handleSubmit(event){
        returnAcc({AccName:this.inputVal})
        .then(result=>{this.account=result;
            this.error=undefined;
            console.log('Acc >> '+JSON.stringify(this.account));
        })
        
        .catch(error=>{
            this.error=error;
            this.account=undefined;
            console.log('error >> '+this.error);

        });
       

    }
}