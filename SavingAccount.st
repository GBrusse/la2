Account subclass: SavingAccount [
    | interest |

    SavingAccount new: number with: customer with: balance [
        super new.
        number := number.
        customer := customer.
        balance := balance.
        interest := 0.
        self.
    ]

    accrue: rate [
        interest := interest + (balance * rate).
        balance := balance + (balance * rate).
    ]
]
