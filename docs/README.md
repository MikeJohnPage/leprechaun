<img style="float:right;" height="250" src="_assets/leprechaun.png" />

Code generator for _lean_ and _robust_ shiny applications.

## Get it

It's not yet on CRAN, get it from Github.

```r
# install.packages("remotes")
remotes::install_github("devOpifex/leprechaun")
```

## How it works

From the root of a package, scaffold a leprechaun application.
This generates basic code for a shiny application within the 
package.

Then, if more features are needed, you can call the `use_*` family
of functions to selectively add them to your project. e.g.:
to add utility JavaScript functions to hide or show elements
in the DOM.

## The elephant in the room

Leprechaun is indeed very similar to 
[golem](https://golemverse.org/) but it differs in some ways.
Namely it generates code and does not make itself a dependency
of the application you build; the are _leaner_ and 
_smaller_, hence the name "leprechaun."

Golem is a great package, which, like probably most of you,
I have used to build dozens of apps. However,

1. It comes with numerous features I rarely use.
2. It comes as a dependency to my application.

The two points above increase the size of applications and 
make them more fragile.

The idea of leprechaun is to allow building applications that
do not require it to run, and where the features we include in
the application are entirely optional.

Therefore, leprechaun generates code that it places 
in the package/app you build, it does require importing 
external dependencies, other than 
[shiny](https://shiny.rstudio.com) and 
[bslib](https://rstudio.github.io/bslib/).

This is because leprechaun, sees itself as a _developer dependency_
it's only job is to make it easier for the developer to build an 
application.

This allows keeping things small and efficient, leprechaun also
encourages that approach with regard to the JavaScript and CSS
via [packer](https://packer.john-coene.com), and 
[sass](https://github.com/rstudio/sass) respectively.
