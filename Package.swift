import PackageDescription

let package = Package(
    name: "EsaKitSPM",
    dependencies: [
        .Package(url: "https://github.com/pixyzehn/EsaKit.git", "0.2.0"),
    ]
)
