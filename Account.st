Account subclass: #CheckingAccount
instanceVariableNames: 'number customer balance'
classVariableNames: ''
poolDictionaries: ''
category: 'Banking'
accrue: rate [
    self subclassResponsibility
]

balance [
    ^ balance
]

deposit: amount [
    balance := balance + amount
]

withdraw: amount [
    balance := balance - amount
]

toString [
    ^ number , ':' , customer , ':' , balance asString
]