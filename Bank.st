Set subclass: Bank [
    | accounts |

    Bank new [
        super new.
        accounts := Set new.
        self.
    ]

    add: anAccount [
        accounts add: anAccount.
    ]

    accrue: rate [
        accounts do: [ :each | each accrue: rate ]
    ]

    toString [
        | r |
        r := ''.
        accounts do: [ :each | r := r, each asString, String cr ].
        ^ r
    ]

    main [
        | bank c |
        bank := Bank new.
        c := Customer new: 'Ann'.
        bank add: (CheckingAccount new: '01001' with: c with: 100.00).
        bank add: (SavingAccount new: '01002' with: c with: 200.00).
        bank accrue: 0.02.
        Transcript show: bank asString.
    ]
]
