// swift-tools-version:4.0
 
import PackageDescription
 
let package = Package(
 
    name: "DeckOfPlayingCards",
 
    products: [
        .library(name: "DeckOfPlayingCards", targets: ["DeckOfPlayingCards"]),
    ],
 
    dependencies: [
        .package(url: "../FisherYates", .branch("master")),
        .package(url: "../PlayingCard", .branch("master")),
    ],
 
    targets: [
        .target(name: "DeckOfPlayingCards", dependencies: ["FisherYates", "PlayingCard"], path:"Sources"),
    ]
 
) // Package
