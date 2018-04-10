# Playing Cards

A PoC of swift language managing modules using the swift package manager

Create separates git local repositories in every project.
- git init
- git add .
- git commit -m "first commit"

In this way we have a local git which is used for the package manager in every module.

Then run swift build in every module.
- swift build PlayingCard
- swift build FisherYates
- swift build DeckOfPlayingCards
- swift build Dealer

From dealer:
- swift package update 
- swift run Dealer
 

References: 
- https://kodigoswift.com/swift-package-manager-paquetes-y-dependencias/
- https://www.raywenderlich.com/122189/introduction-to-open-source-swift-on-linux

##To develop new modules:
we have to keep in mind if it's a library or an executable.
create a folder and run a command like this:
- swift package init --type library
- swift package init --type executable

the scaffolding will be created.