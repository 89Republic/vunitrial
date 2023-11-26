import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kSansitaOneRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSansitaOneRegular, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsLight, size: size)
    }

    static func kPoppinsExtraLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsExtraLight, size: size)
    }

    static func kRobotoRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanBold, size: size)
    }

    static func kRobotoRomanSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanSemiBold, size: size)
    }

    static func kRobotoRomanExtraLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanExtraLight, size: size)
    }

    static func kRobotoRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanRegular, size: size)
    }

    static func kRobotoRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanMedium, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kSansitaOneRegular":
            result = self.kSansitaOneRegular(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsLight":
            result = self.kPoppinsLight(size: size)
        case "kPoppinsExtraLight":
            result = self.kPoppinsExtraLight(size: size)
        case "kRobotoRomanBold":
            result = self.kRobotoRomanBold(size: size)
        case "kRobotoRomanSemiBold":
            result = self.kRobotoRomanSemiBold(size: size)
        case "kRobotoRomanExtraLight":
            result = self.kRobotoRomanExtraLight(size: size)
        case "kRobotoRomanRegular":
            result = self.kRobotoRomanRegular(size: size)
        case "kRobotoRomanMedium":
            result = self.kRobotoRomanMedium(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        default:
            result = self.kSansitaOneRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kSansitaOneRegular: String = "SansitaOne-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsLight: String = "Poppins-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsExtraLight: String = "Poppins-ExtraLight"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanBold: String = "RobotoRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanSemiBold: String = "RobotoRoman-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanExtraLight: String = "RobotoRoman-ExtraLight"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanRegular: String = "RobotoRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanMedium: String = "RobotoRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
    }
}
