Account subclass: CheckingAccount [
    initializeWith: aNumber with: aCustomer with: aBalance [
        super initializeWith: aNumber with: aCustomer with: aBalance.
        ^ self
    ]

    accrue: rate [
        "Nothing to do for checking accounts"
    ]
]