SavingAccount subclass: #SavingAccount
instanceVariableNames: 'interest'
classVariableNames: ''
poolDictionaries: ''
category: 'Banking'
SavingAccount newWithNumber: aNumber customer: aCustomer balance: aBalance [
    | savingAccount |
    savingAccount := super new.
    savingAccount
        number: aNumber;
        customer: aCustomer;
        balance: aBalance;
        interest: 0;
        yourself.
]

accrue: rate [
    interest := interest + balance * rate.
    balance := balance + balance * rate.
]
