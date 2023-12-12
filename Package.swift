// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "HelloSwiftPM",
  products: [
    .library(
      name: "HelloSwiftPM",
      targets: ["HelloSwiftPM"]
    ),
    .library(
      name: "SayHello",
      targets: ["SayHello"]
    ),
    .library(
      name: "SayHelloAgain",
      targets: ["SayHelloAgain"]
    ),
    .executable(
      name: "HelloSwiftPMApp", 
      targets: ["HelloSwiftPMApp"]
    )
  ],
  targets: [
    .target(
      name: "HelloSwiftPM",
      path: "HelloSwiftPM",
      exclude: [
        "SayHello",
        "SayHelloAgain"
      ],
      publicHeadersPath: "."
    ),

    .target(
      name: "SayHello",
      dependencies: [
        .target(name: "HelloSwiftPM")
      ],
      path: ".",
      exclude: [
        "HelloSwiftPM/SayHelloAgain",
        "Sources",
        ".build",
        ".vscode",
        ".gitignore",
        "Package.swift",
      ],
      publicHeadersPath: "."
    ),

    .target(
      name: "SayHelloAgain",
      dependencies: [
        .target(name: "HelloSwiftPM"),
        .target(name: "SayHello")
      ],
      path: "HelloSwiftPM",
      exclude: [
        "SayHello"
      ],
      publicHeadersPath: "."
    ),

    .executableTarget(
      name: "HelloSwiftPMApp",
      dependencies: [
        "HelloSwiftPM",
        "SayHello",
        "SayHelloAgain"
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    )
  ],
  cxxLanguageStandard: .cxx17
)
