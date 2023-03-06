Set subclass: Bank [
    | accounts |

    new [
        ^ super new initialize
    ]

    initialize [
        super initialize.
        accounts := Set new.
        ^ self
    ]

    add: anAccount [
        accounts add: anAccount.
    ]

    accrue: rate [
        accounts do: [:each | each accrue: rate]
    ]

    toString [
        | stream |
        stream := String new writeStream.
        accounts do: [:each | stream nextPutAll: each asString; cr].
        ^ stream contents
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
