import SwiftUI

struct PLAYView: View {
    @StateObject var pLAYViewModel = PLAYViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Image("img_vector_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeHeight(27.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(4.0))
                                    .onTapGesture {
                                        pLAYViewModel.nextScreen = "HOMEPAGEView"
                                    }
                                Text(StringConstants.kLblPlays)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(45.0),
                           alignment: .leading)
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .center) {
                                Image("img_rectangle2717")
                                    .resizable()
                                    .frame(width: getRelativeWidth(390.0),
                                           height: getRelativeHeight(239.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_vector_black_900_40x40")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(121.0))
                                    .padding(.leading, getRelativeWidth(177.0))
                                    .padding(.trailing, getRelativeWidth(173.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(239.0),
                                   alignment: .leading)
                            VStack {
                                Text(StringConstants.kMsgIntroductionTo)
                                    .font(FontScheme
                                        .kInterSemiBold(size: getRelativeHeight(24.186043)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(348.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(8.0))
                                HStack {
                                    Image("img_clock")
                                        .resizable()
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(5.0))
                                    Text(StringConstants.kLbl15h30min)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(24.186043)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black9007f)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(114.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(15.0))
                                    Text(StringConstants.kLbl15h29minsLeft)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(22.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Teal700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(173.0),
                                               height: getRelativeHeight(26.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(21.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(349.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(4.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(94.0),
                                   alignment: .leading)
                            .background(RoundedCorners(bottomLeft: 20.155035,
                                                       bottomRight: 20.155035)
                                    .fill(ColorConstants.Bluegray10033))
                            ZStack(alignment: .center) {
                                Image("img_rectangle2717_239x390")
                                    .resizable()
                                    .frame(width: getRelativeWidth(390.0),
                                           height: getRelativeHeight(239.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_vector_black_900_40x40")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(100.0))
                                    .padding(.bottom, getRelativeHeight(99.0))
                                    .padding(.leading, getRelativeWidth(177.0))
                                    .padding(.trailing, getRelativeWidth(173.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(239.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(41.0))
                            VStack {
                                Text(StringConstants.kMsgMolecularChemi)
                                    .font(FontScheme
                                        .kInterSemiBold(size: getRelativeHeight(24.186043)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(244.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(8.0))
                                HStack {
                                    Image("img_clock")
                                        .resizable()
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(5.0))
                                    Text(StringConstants.kLbl15h30min)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(24.186043)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black9007f)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(114.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(15.0))
                                    Text(StringConstants.kLbl3h25minsLeft)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(22.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Teal700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(161.0),
                                               height: getRelativeHeight(26.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(13.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(30.0), alignment: .leading)
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(94.0),
                                   alignment: .leading)
                            .background(RoundedCorners(bottomLeft: 20.155035,
                                                       bottomRight: 20.155035)
                                    .fill(ColorConstants.Bluegray10033))
                        }
                        .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(710.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(710.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(95.0), alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(22.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $pLAYViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $pLAYViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: VIEWVIDEOView(),
                                   tag: "VIEWVIDEOView",
                                   selection: $pLAYViewModel.nextScreen,
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

struct PLAYView_Previews: PreviewProvider {
    static var previews: some View {
        PLAYView()
    }
}
