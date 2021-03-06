import Foundation

// Here is an example of an EventBus extras object. This allows strict typing support for extras.

struct FileDownloadedEventBusExtras: EventBusExtrasConverter {
    let fileId: String

    private enum Keys: String {
        case fileId
    }

    func toExtras() -> EventBusExtras {
        [
            Keys.fileId.rawValue: fileId
        ]
    }

    static func fromExtras(_ extras: EventBusExtras) -> FileDownloadedEventBusExtras {
        FileDownloadedEventBusExtras(fileId: extras[Keys.fileId.rawValue] as! String) // swiftlint:disable:this force_cast
    }
}
