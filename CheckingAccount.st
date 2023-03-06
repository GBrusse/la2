Account subclass: CheckingAccount [
    CheckingAccount new: number with: customer with: balance [
        super new.
        number := number.
        customer := customer.
        balance := balance.
        self.
    ]

    accrue: rate [
        "Nothing to do for checking accounts"
    ]
]
