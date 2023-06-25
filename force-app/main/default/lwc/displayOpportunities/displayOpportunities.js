import { LightningElement,wire,api, track } from 'lwc';
import returnAccounts from '@salesforce/apex/opportunitiesForRelatedAccounts.returnAccounts';

export default class DisplayOpportunities extends LightningElement {
    @api recordId;
    @track oppData;
    @wire(returnAccounts,{AccountId:'$recordId'}) 
    wireMethod({error,data}){
        if (data) {
            this.oppData = data;
            console.log('Data >>>> '+this.oppData);
        }else if(error){
            this.error = error;
            this.oppData = undefined
            console.log('error >> '+this.error);

        }

    }




}