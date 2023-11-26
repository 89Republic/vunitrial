import Foundation
import SwiftUI

class PROFILE1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var componentnineText: String = ""
    @Published var emailoneText: String = ""
    @Published var isValidEmailoneText: Bool = true
    @Published var dateText: String = ""
    @Published var componentnineoneText: String = ""
    @Published var componentninetwoText: String = ""
    @Published var isValidComponentninetwoText: Bool = true
    @Published var genderoneText: String = ""
}
