import SwiftUI

struct COLLEGEView: View {
    @StateObject var cOLLEGEViewModel = COLLEGEViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_vector_black_900")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(5.0))
                            Text(StringConstants.kMsgCollegeOfHeal)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(28.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900F2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(274.0),
                                       height: getRelativeHeight(42.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(30.0))
                        }
                        .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(42.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.trailing)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                      spacing: 29.0) {
                                ForEach(0 ... 5, id: \.self) { index in
                                    DEPARTMENT2Cell()
                                }
                            }
                        }
                    }
                    .padding(.top, getRelativeHeight(34.0))
                    .fixedSize(horizontal: false, vertical: false)
                }
                .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(704.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(22.0))
                .padding(.trailing, getRelativeWidth(19.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(26.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct COLLEGEView_Previews: PreviewProvider {
    static var previews: some View {
        COLLEGEView()
    }
}
