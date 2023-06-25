import { LightningElement } from 'lwc';

export default class ParentLwc extends LightningElement {
    counterVal;
    handleChange(event){
        this.counterVal = event.target.value;
        console.log('Counter Value >> '+this.counterVal);
    }
}