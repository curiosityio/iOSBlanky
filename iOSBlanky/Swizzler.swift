import Foundation

class Swizzler {
    static let swizzling: (AnyClass, Selector, Selector) -> Void = { forClass, originalSelector, swizzledSelector in
        let originalMethod = class_getInstanceMethod(forClass, originalSelector)
        let swizzledMethod = class_getInstanceMethod(forClass, swizzledSelector)
        method_exchangeImplementations(originalMethod!, swizzledMethod!)
    }
}
