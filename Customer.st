Object subclass: Customer [
    | name |

    Customer new: aName [
        name := aName.
    ]

    toString [
        ^ name
    ]
]