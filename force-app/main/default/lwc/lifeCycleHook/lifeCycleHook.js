import { api, LightningElement } from 'lwc';
import firsttemplate from './lifeCycleHook.html';
import secondtemplate from './lifeCycleHook.html';
export default class LifeCycleHook extends LightningElement {
    @api templateno = 'temp1';
    constructor(){
        super();
        console.log('Inside Constrctor ');
    }
    connectedCallback(){
        console.log('Inside ConnectedCallBack ');
    }
    disconnectedCallback(){
        console.log('Inside Dis-ConnectedCallBack ');
    }
    changetemplate(){
        console.log('inside change template method');
        if(this.templateno=='temp1'){
            this.templateno='temp2';
        }else{
            this.templateno='temp1';
        }
    }
    render(){
        console.log('Inside render ');
        console.log('templateno >> '+this.templateno);
        if(this.templateno==='temp1'){
            return firsttemplate;
        }else{
            console.log('In else');
            return secondtemplate;
        }
    }
}