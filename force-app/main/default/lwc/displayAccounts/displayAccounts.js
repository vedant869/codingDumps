import { LightningElement,track,wire } from 'lwc';
import getAccount from '@salesforce/apex/AccountData.getAccount';
import Name from '@salesforce/schema/Account.Name';
import Phone from '@salesforce/schema/Account.Phone';

const COL = [{label:'Name',fieldName:Name.fieldApiName  },
            {label:'Phone',fieldName:Phone.fieldApiName,type:'Phone' }                
            ];

export default class DisplayAccounts extends LightningElement {
    @track colunmns = COL;
    @wire(getAccount)ListAcc
    
}