import SwiftUI

struct DEPARTMENTS1View: View {
    @StateObject var dEPARTMENTS1ViewModel = DEPARTMENTS1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                HStack {
                                    Image("img_ellipse4")
                                        .resizable()
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeWidth(65.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Spacer()
                                    ZStack(alignment: .bottomLeading) {
                                        VStack {
                                            Text(StringConstants.kLblHiKormla)
                                                .font(FontScheme
                                                    .kRobotoRomanSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(112.0),
                                                       height: getRelativeHeight(29.0),
                                                       alignment: .topLeading)
                                                .padding(.vertical, getRelativeHeight(6.0))
                                                .padding(.leading, getRelativeWidth(5.0))
                                                .padding(.trailing, getRelativeWidth(174.0))
                                        }
                                        .frame(width: getRelativeWidth(292.0),
                                               height: getRelativeHeight(65.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 4.85, topRight: 4.85,
                                                                   bottomLeft: 4.85,
                                                                   bottomRight: 4.85)
                                                .fill(ColorConstants.WhiteA70033))
                                        Text(StringConstants.kMsgLetSStartLea)
                                            .font(FontScheme
                                                .kRobotoRomanExtraLight(size: getRelativeHeight(24.0)))
                                            .fontWeight(.ultraLight)
                                            .foregroundColor(ColorConstants.Black900B2)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(189.0),
                                                   height: getRelativeHeight(29.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(36.04))
                                            .padding(.trailing, getRelativeWidth(98.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(292.0),
                                           height: getRelativeHeight(65.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(368.0),
                                       height: getRelativeHeight(65.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(65.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(43.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                            HStack {
                                Image("img_search")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .padding(.leading, getRelativeWidth(27.0))
                                Text(StringConstants.kLblSearchNow)
                                    .font(FontScheme
                                        .kRobotoRomanExtraLight(size: getRelativeHeight(20.0)))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(ColorConstants.Black900B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(109.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.leading, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.Bluegray10034))
                            .shadow(color: ColorConstants.Black9003f, radius: 2, x: 0, y: 4)
                            .padding(.top, getRelativeHeight(38.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            HStack {
                                HStack {
                                    TextField(StringConstants.kLblMedicine,
                                              text: $dEPARTMENTS1ViewModel.programmeoneText)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(22.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Teal700))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                Spacer()
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblAnatomy)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(22.0)))
                                            .fontWeight(.medium)
                                            .padding(.horizontal, getRelativeWidth(13.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .foregroundColor(ColorConstants.Black900B2)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(130.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 10.0,
                                                                       topRight: 10.0,
                                                                       bottomLeft: 10.0,
                                                                       bottomRight: 10.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .shadow(color: ColorConstants.Black9003f, radius: 4,
                                                    x: 0, y: 4)
                                    }
                                })
                                .frame(width: getRelativeWidth(130.0),
                                       height: getRelativeHeight(50.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                Spacer()
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblSurgery)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(22.0)))
                                            .fontWeight(.medium)
                                            .padding(.trailing, getRelativeWidth(21.0))
                                            .padding(.leading, getRelativeWidth(17.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .foregroundColor(ColorConstants.Black900B2)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 10.0,
                                                                       topRight: 10.0,
                                                                       bottomLeft: 10.0,
                                                                       bottomRight: 10.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .shadow(color: ColorConstants.Black9003f, radius: 4,
                                                    x: 0, y: 4)
                                    }
                                })
                                .frame(width: getRelativeWidth(125.0),
                                       height: getRelativeHeight(50.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            }
                            .frame(width: getRelativeWidth(420.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(32.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(303.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(303.0),
                           alignment: .leading)
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Image("img_rectangle2717")
                                    .resizable()
                                    .frame(width: getRelativeWidth(387.0),
                                           height: getRelativeHeight(238.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                VStack {
                                    Text(StringConstants.kMsgIntroductionTo)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(345.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                    HStack {
                                        Image("img_clock")
                                            .resizable()
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl15h30min)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(113.0),
                                                   height: getRelativeHeight(29.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kLbl12Sessions)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(152.0),
                                                   height: getRelativeHeight(29.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(14.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(29.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
                                }
                                .frame(width: getRelativeWidth(387.0),
                                       height: getRelativeHeight(94.0), alignment: .leading)
                                .background(RoundedCorners(bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Bluegray10033))
                                .shadow(color: ColorConstants.Black9003f, radius: 5, x: 0, y: 4)
                                Image("img_rectangle2717_238x387")
                                    .resizable()
                                    .frame(width: getRelativeWidth(387.0),
                                           height: getRelativeHeight(238.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(25.0))
                                VStack {
                                    Text(StringConstants.kLblToxicology1)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                        .padding(.trailing, getRelativeWidth(21.0))
                                    HStack {
                                        Image("img_clock")
                                            .resizable()
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl12h35min)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(115.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kLbl18Sessions)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(166.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(317.0),
                                           height: getRelativeHeight(26.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
                                }
                                .frame(width: getRelativeWidth(387.0),
                                       height: getRelativeHeight(94.0), alignment: .leading)
                                .background(RoundedCorners(bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Bluegray10033))
                                .shadow(color: ColorConstants.Black9003f, radius: 5, x: 0, y: 4)
                                Image("img_rectangle2717_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(387.0),
                                           height: getRelativeHeight(238.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(25.0))
                                VStack {
                                    Text(StringConstants.kMsgIntroductionTo2)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                        .padding(.trailing, getRelativeWidth(21.0))
                                    HStack {
                                        Image("img_clock")
                                            .resizable()
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl10h40min)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(115.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kLbl11Sessions)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black9007f)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(166.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(317.0),
                                           height: getRelativeHeight(26.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
                                }
                                .frame(width: getRelativeWidth(387.0),
                                       height: getRelativeHeight(94.0), alignment: .leading)
                                .background(RoundedCorners(bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Bluegray10033))
                                .shadow(color: ColorConstants.Black9003f, radius: 5, x: 0, y: 4)
                            }
                            .frame(width: getRelativeWidth(387.0), alignment: .topLeading)
                        }
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
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
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: STARTNOWView(),
                                   tag: "STARTNOWView",
                                   selection: $dEPARTMENTS1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $dEPARTMENTS1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $dEPARTMENTS1ViewModel.nextScreen,
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

struct DEPARTMENTS1View_Previews: PreviewProvider {
    static var previews: some View {
        DEPARTMENTS1View()
    }
}
