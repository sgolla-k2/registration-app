import { LightningElement, track } from 'lwc';
import registerUser from '@salesforce/apex/RegistrationController.registerUser';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RegistrationForm extends LightningElement {

    @track firstName;
    @track lastName;
    @track email;

    handleFirstName(event){
        this.firstName = event.target.value;
    }

    handleLastName(event){
        this.lastName = event.target.value;
    }

    handleEmail(event){
        this.email = event.target.value;
    }

    handleRegister(){

        registerUser({
            firstName : this.firstName,
            lastName : this.lastName,
            email : this.email
        })
        .then(result => {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success',
                    message: result,
                    variant: 'success'
                })
            );
        })
        .catch(error => {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: error.body.message,
                    variant: 'error'
                })
            );
        });
    }
}
