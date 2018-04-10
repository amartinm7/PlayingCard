// swift-tools-version:4.0
//
import PackageDescription

let package = Package(

    name: "Dealer",

    products: [
        .executable(name: "Dealer", targets: ["Dealer"])
    ],

    dependencies: [
        .package(url: "../DeckOfPlayingCards", .branch("master")),
    ],

    targets: [
        .target(name: "Dealer", dependencies: ["DeckOfPlayingCards"])
    ]

) // Package