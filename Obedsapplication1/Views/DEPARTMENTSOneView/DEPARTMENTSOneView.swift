import SwiftUI

struct DEPARTMENTSOneView: View {
    @StateObject var dEPARTMENTSOneViewModel = DEPARTMENTSOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Image("img_vector_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeHeight(27.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .onTapGesture {}
                                Text(StringConstants.kLblLevel)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(30.0))
                            }
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.trailing)
                        ZStack(alignment: .topLeading) {
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel100)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(114.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(410.0))
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel200)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(328.0))
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel300)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(246.0))
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel400)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(122.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(246.0))
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel500)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(121.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(328.0))
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text(StringConstants.kLblLevel600)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(121.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(378.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .background(ColorConstants.Bluegray10026)
                                .shadow(color: ColorConstants.Black9003f, radius: 10, x: 0, y: 4)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(64.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Teal700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(96.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(318.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(96.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(410.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(506.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(39.0))
                    }
                    .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(590.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(20.0))
                    .padding(.trailing, getRelativeWidth(32.0))
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(95.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(771.48))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $dEPARTMENTSOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $dEPARTMENTSOneViewModel.nextScreen,
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

struct DEPARTMENTSOneView_Previews: PreviewProvider {
    static var previews: some View {
        DEPARTMENTSOneView()
    }
}
