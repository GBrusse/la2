Account subclass: #CheckingAccount
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Banking'

withdraw: anAmount
    balance < anAmount ifTrue: [^ self].
    balance := balance - anAmount.

overdraftAmount
    ^ 100.00

overdraftFee
    ^ 25.00

withdraw: anAmount overdraft: over
    over < (anAmount - balance) ifTrue: [^ self].
    balance := balance - anAmount.
    over > 0 ifTrue: [balance := balance - overdraftFee].
