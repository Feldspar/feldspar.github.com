{-# LANGUAGE OverloadedStrings #-}
module Main where

import Hakyll
import GhcArgs (ghcArgs)

main :: IO ()
main = hakyllWith config $ do
    cargs <- preprocess ghcArgs

    match "bootstrap/css/bootstrap.min.css" $ do
        route (constRoute "css/bootstrap.css")
        compile compressCssCompiler

    match "css/*.hs" $ do
        route $ setExtension "css"
        compile $
            getResourceString >>=
            withItemBody (unixFilter "runghc" cargs) >>=
            return . fmap compressCss

    match "*.md" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/bootstrap.html" defaultContext
            >>= relativizeUrls

    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "templates/*" $ compile templateCompiler

config :: Configuration
config = defaultConfiguration
    { deployCommand = "rsync --checksum -av _site/* ../ && git add .. && git ci -m \"Generated from `git rev-parse HEAD`\" && git push"
    }
                              
