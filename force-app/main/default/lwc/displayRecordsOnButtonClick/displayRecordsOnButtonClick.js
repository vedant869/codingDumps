import { LightningElement,track,wire } from 'lwc';
import getAccounts from'@salesforce/apex/displayRecords.getAccounts'
import Name from '@salesforce/schema/Account.Name';
import Phone from '@salesforce/schema/Account.Phone';

const COL = [{label:'Name' ,fieldName:Name.fieldApiName},{label:'Phone',fieldName:Phone.fieldApiName}];
export default class DisplayRecordsOnButtonClick extends LightningElement {

    @track columns = COL;
    @track searchkey;
    @track data;
    @track error;
    handleChange(event){
        this.searchkey = event.target.value;

    }
    handleClick(event){
        getAccounts({searchString:this.searchkey})
            .then(result=>{this.data=result;this.error=undefined;});

        
    }
    @wire(getAccounts) ListAcc
}