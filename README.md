# covfefe for ColdFusion

---

Covfefe is a ColdFusion component that you can use to really clarify your messaging.

## Authors

Developed by Matt Gifford (aka coldfumonkeh)

- http://www.mattgifford.co.uk
- http://www.monkehworks.com


### Share the love

Got a lot out of this package? Saved you time and money?

Share the love and visit Matt's wishlist: http://www.amazon.co.uk/wishlist/B9PFNDZNH4PY

---

# What it does

You can use this component to convert your text content so it is clear and readable / tweetable (not really)


`var strOutput = covfefe.covfefify( 'coverage' );`

The above would result in `covfefe` being returned to the user.

You can also send in a sentence. In this case, the last word in the sentence will be converted:

`var strOutput = covfefe.covfefify( 'Despite the constant negative press coverage' );`

This would result in:

`Despite the constant negative press covfefe`


# CommandBox Compatible

## Installation
This CFC can be installed as standalone or as a ColdBox Module. Either approach requires a simple CommandBox command:

`box install covfefify`

Then follow either the standalone or module instructions below.

### Standalone
This wrapper will be installed into a directory called `covfefe` and then can be instantiated via `new covfefe.covfefe()`. The component itself does not require any parameters into the `init()` method.

### ColdBox Module
This package also is a ColdBox module as well.

Once installed, you can leverage the CFC via the injection DSL: `covfefe@covfefe`
