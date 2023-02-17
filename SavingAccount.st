Account subclass: #SavingAccount
  instanceVariableNames: ''
   ClassVariableNames: ''
   poolDictionaires: ''
   category: 'Banking'
   
withdraw: anAmount
  balance < anAmount ifTrue: [^ self].
  balance := balance - anAmount.
  
accrueInterest
  ^ self subclassResponsibility
  
