Object subclass: #Account
    instanceVariableNames: 'number balance owner'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Banking'

newAccountNumber
    ^self class accountNumberSeed: self class accountNumberSeed + 1

balance
    ^ balance

deposit: anAmount
    balance := balance + anAmount.

withdraw: anAmount
    balance := balance - anAmount.

number
    ^ number

owner
    ^ owner

initializeWithNumber: n andOwner: o
    number := n.
    owner := o.
    balance := 0.

accountNumberSeed
    ^0

accountNumberSeed: anInteger
    accountNumberSeed := anInteger
