Object subclass: Account [
    | number customer balance |

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
        ^ number, ':', customer asString, ':', balance asString
    ]

    accrue: rate [
        self subclassResponsibility
    ]
]
