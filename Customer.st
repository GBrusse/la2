Object subclass: Customer [ | name | new: aName [^ super new initializeWith: aName]
    initializeWith: aName [name := aName. ^ self]
    toString [^ name]
]
