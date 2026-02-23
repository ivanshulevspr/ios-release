import UIKit

@objc
public class FontSet: NSObject {
    @objc public init(largeTitle: UIFont, body: UIFont, bold: UIFont, navigationButtonsFont: UIFont? = nil) {
        self.largeTitle = largeTitle
        self.body = body
        self.bold = bold
        self.navigationButtonsFont = navigationButtonsFont
    }
    
    public let largeTitle: UIFont
    public let body: UIFont
    public let bold: UIFont
    public let navigationButtonsFont: UIFont?
}

@objc public extension FontSet {
    static var standard: FontSet {
        FontSet(largeTitle: .systemFont(ofSize: 34, weight: .bold),
                body: .systemFont(ofSize: 14),
                bold: .systemFont(ofSize: 14, weight: .bold))
    }
}
