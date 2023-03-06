Account subclass: SavingAccount [
    | interest |

    initializeWith: aNumber with: aCustomer with: aBalance [
        super initializeWith: aNumber with: aCustomer with: aBalance.
        interest := 0.
        ^ self
    ]

    accrue: rate [
        interest := interest + (balance * rate).
        balance := balance + (balance * rate).
    ]
]
