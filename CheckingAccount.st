CheckingAccount subclass: #CheckingAccount
instanceVariableNames: ''
classVariableNames: ''
poolDictionaries: ''
category: 'Banking'
CheckingAccount newWithNumber: aNumber customer: aCustomer balance: aBalance [
    | checkingAccount |
    checkingAccount := super new.
    checkingAccount
        number: aNumber;
        customer: aCustomer;
        balance: aBalance;
        yourself.
]

accrue: rate [
    "Do nothing for now"
]