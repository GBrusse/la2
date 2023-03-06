Bank class subclass: #Bank
instanceVariableNames: 'accounts'
classVariableNames: ''
poolDictionaries: ''
category: 'Banking'
Bank new [
    ^ super new initialize
]

initialize [
    accounts := Set new.
    ^ self
]

add: anAccount [
    accounts add: anAccount.
]

accrue: rate [
    accounts do: [:each | each accrue: rate]
]

toString [
    | result |
    result := ''.
    accounts do: [:each | result := result , each asString , String cr].
    ^ result
]

main [
    | bank c |
    bank := Bank new.
    c := Customer new: 'Ann'.
    bank add: (CheckingAccount newWithNumber: '01001' customer: c balance: 100.00).
    bank add: (SavingAccount newWithNumber: '01002' customer: c balance: 200.00).
    bank accrue: 0.02.
    Transcript show: bank asString.
]
