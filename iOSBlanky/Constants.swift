import Foundation

class Constants {
    static var buildFlavor: BuildFlavor {
        let buildFlavorString: String = Bundle.main.object(forInfoDictionaryKey: "Build flavor") as! String // swiftlint:disable:this force_cast

        return BuildFlavor.getFromString(buildFlavorString)
    }

    #if DEBUG
    static let apiEndpoint: String = "https://api.github.com"
    #else
    static let apiEndpoint: String = "https://api.github.com"
    #endif
}