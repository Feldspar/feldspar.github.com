[![Build Status](https://travis-ci.org/Feldspar/feldspar.github.com.svg?branch=master)](https://travis-ci.org/Feldspar/feldspar.github.com)

### installation and testing

`hakyll`'s dependencies are a bit awkward, so use a sandbox:

    cd src
    cabal sandbox init
    cabal install
    cabal run watch

### Building and deploying

    cd src
    cabal run build
    cabal run check

Check that the site looks ok and then deploy

    cabal run deploy

