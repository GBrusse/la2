Object subclass: #Customer
    instanceVariableNames: 'firstName lastName ssn address city state zip'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Banking'

firstName: fn lastName: ln ssn: s address: a city: c state: st zip: z
    super new.
    firstName := fn.
    lastName := ln.
    ssn := s.
    address := a.
    city := c.
    state := st.
    zip := z.
    ^ self
    
firstName
    ^ firstName

lastName
    ^ lastName

ssn
    ^ ssn

address
    ^ address

city
    ^ city

state
    ^ state

zip
    ^ zip
