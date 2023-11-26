import SwiftUI

struct SPLASHSCREENTwoView: View {
    @StateObject var sPLASHSCREENTwoViewModel = SPLASHSCREENTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_rectangle5")
                        .resizable()
                        .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(549.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .cornerRadius(24.26)
                        .padding(.top, getRelativeHeight(159.0))
                        .padding(.horizontal, getRelativeWidth(30.0))
                    VStack {
                        Text(StringConstants.kMsgKnustELearn)
                            .font(FontScheme.kSansitaOneRegular(size: getRelativeHeight(31.368078)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(307.0), height: getRelativeHeight(37.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(32.0))
                            .padding(.leading, getRelativeWidth(33.0))
                            .padding(.trailing, getRelativeWidth(29.0))
                    }
                    .onTapGesture {
                        sPLASHSCREENTwoViewModel.nextScreen = "PLAYView"
                    }
                    .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(105.0),
                           alignment: .center)
                    .background(RoundedCorners(bottomLeft: 24.262291, bottomRight: 24.262291)
                        .fill(ColorConstants.WhiteA700))
                    .padding(.bottom, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Teal700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SPLASHSCREENOneView(),
                                   tag: "SPLASHSCREENOneView",
                                   selection: $sPLASHSCREENTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PLAYView(),
                                   tag: "PLAYView",
                                   selection: $sPLASHSCREENTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Teal700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            sPLASHSCREENTwoViewModel.nextScreen = "SPLASHSCREENOneView"
        }
    }
}

struct SPLASHSCREENTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SPLASHSCREENTwoView()
    }
}
