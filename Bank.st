Object subclass: #Bank
    instanceVariableNames: 'accounts customers'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Banking'

accounts
    ^ accounts

customers
    ^ customers

initialize
    accounts := OrderedCollection new.
    customers := OrderedCollection new.

addCustomer: aCustomer
    customers add: aCustomer.

openAccountFor: aCustomer
    | newAccount |
    newAccount := CheckingAccount new.
    newAccount initializeWithNumber: Account newAccountNumber andOwner: aCustomer.
    accounts add: newAccount.
    ^ newAccount
