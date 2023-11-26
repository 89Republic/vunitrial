
import Foundation

extension String {
    // MARK: - Check is valid Email

    func isValidEmail(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let str = self.removeWhiteSpaces()
        let regExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExpression)
        return predicate.evaluate(with: str)
    }

    // MARK: - Check is valid Phone/Mobile number

    func isValidPhone(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,12}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        if phoneTest.evaluate(with: self) {
            if CInt(self) != 0 {
                return true
            }
        }
        return false
    }

    // MARK: - Removes whitespaces

    func removeWhiteSpaces() -> String {
        var str = self.trimmingCharacters(in: .whitespaces)
        str = str.replacingOccurrences(of: " ", with: "")
        return str
    }

    // MARK: - Check isEmpty

    func isEmpty() -> Bool {
        if self.isEmpty || self == "" {
            return true
        }
        return false
    }
}
