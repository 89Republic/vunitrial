import SwiftUI

struct SPLASHSCREENOneView: View {
    @StateObject var sPLASHSCREENOneViewModel = SPLASHSCREENOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_rectangle3_247x380")
                        .resizable()
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(247.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                                   bottomRight: 30.0))
                        .padding(.top, getRelativeHeight(152.0))
                        .padding(.horizontal, getRelativeWidth(25.0))
                    VStack {
                        Text(StringConstants.kMsgVarietyOfCour)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(30.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(45.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(29.0))
                        Text(StringConstants.kMsgWeProvideYou2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(20.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(367.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(7.0))
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.WhiteA700))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.YellowA200))
                                .padding(.leading, getRelativeWidth(15.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(14.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(70.0))
                        .padding(.horizontal, getRelativeWidth(29.0))
                        Button(action: {
                            sPLASHSCREENOneViewModel.nextScreen = "SPLASHSCREEN3View"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblGetStarted)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(26.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(380.0),
                                           height: getRelativeHeight(55.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.YellowA200))
                                    .padding(.top, getRelativeHeight(27.0))
                            }
                        })
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.YellowA200))
                        .padding(.top, getRelativeHeight(27.0))
                        Text(StringConstants.kLblSkip)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.horizontal, getRelativeWidth(29.0))
                            .onTapGesture {
                                sPLASHSCREENOneViewModel.nextScreen = "SIGNINPAGEView"
                            }
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(355.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.bottom, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(25.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Teal700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SIGNINPAGEView(),
                                   tag: "SIGNINPAGEView",
                                   selection: $sPLASHSCREENOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SPLASHSCREEN3View(),
                                   tag: "SPLASHSCREEN3View",
                                   selection: $sPLASHSCREENOneViewModel.nextScreen,
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
    }
}

struct SPLASHSCREENOneView_Previews: PreviewProvider {
    static var previews: some View {
        SPLASHSCREENOneView()
    }
}
