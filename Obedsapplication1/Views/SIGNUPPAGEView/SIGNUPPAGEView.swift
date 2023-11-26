import SwiftUI

struct SIGNUPPAGEView: View {
    @StateObject var sIGNUPPAGEViewModel = SIGNUPPAGEViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        Text(StringConstants.kLblSignUp2)
                            .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(32.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(38.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(41.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Formfield1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(340.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(122.0))
                        Button(action: {
                            sIGNUPPAGEViewModel.nextScreen = "HOMEPAGEView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSignUp2)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(12.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(340.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.YellowA200))
                                    .padding(.top, getRelativeHeight(37.0))
                            }
                        })
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.YellowA200))
                        .padding(.top, getRelativeHeight(37.0))
                        Text(StringConstants.kMsgOrSignInWi)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900A5)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(44.0))
                            .padding(.horizontal, getRelativeWidth(41.0))
                        HStack {
                            Image("img_rectangle7_40x40")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_rectangle8")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(30.0))
                            Image("img_rectangle9")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(30.0))
                            Image("img_rectangle10_40x40")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(30.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(250.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.horizontal, getRelativeWidth(41.0))
                    }
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(684.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(44.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $sIGNUPPAGEViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SIGNUPPAGEView_Previews: PreviewProvider {
    static var previews: some View {
        SIGNUPPAGEView()
    }
}
