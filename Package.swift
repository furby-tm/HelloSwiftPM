// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "SayHelloSwiftPMExample",
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
      publicHeadersPath: "."
    ),

    .target(
      name: "SayHello",
      dependencies: [
        .target(name: "HelloSwiftPM")
      ],
      path: "HelloSwiftPM/SayHello",
      publicHeadersPath: "."
    ),

    .target(
      name: "SayHelloAgain",
      dependencies: [
        .target(name: "HelloSwiftPM"),
        .target(name: "SayHello")
      ],
      path: "HelloSwiftPM/SayHelloAgain",
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
