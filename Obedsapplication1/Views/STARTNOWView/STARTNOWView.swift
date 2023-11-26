import SwiftUI

struct STARTNOWView: View {
    @StateObject var sTARTNOWViewModel = STARTNOWViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Image("img_vector_black_900")
                            .resizable()
                            .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(27.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(21.0))
                            .onTapGesture {
                                sTARTNOWViewModel.nextScreen = "DEPARTMENTS1View"
                            }
                        ZStack(alignment: .bottomLeading) {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 8, id: \.self) { index in
                                            RowsevenCell()
                                                .onTapGesture {
                                                    sTARTNOWViewModel.nextScreen = "VIEWVIDEOView"
                                                }
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(374.0), alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(510.0))
                            .padding(.trailing, getRelativeWidth(38.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(73.0),
                                       alignment: .bottomLeading)
                                .background(RoundedCorners(bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(747.0))
                            Button(action: {
                                sTARTNOWViewModel.nextScreen = "VIEWVIDEOView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblStartNow)
                                        .font(FontScheme
                                            .kRobotoRomanSemiBold(size: getRelativeHeight(28.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(13.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(367.0),
                                               height: getRelativeHeight(60.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0)
                                                .fill(ColorConstants.Teal700))
                                        .padding(.top, getRelativeHeight(724.0))
                                        .padding(.leading, getRelativeWidth(25.0))
                                        .padding(.trailing, getRelativeWidth(38.0))
                                }
                            })
                            .frame(width: getRelativeWidth(367.0), height: getRelativeHeight(60.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Teal700))
                            .padding(.top, getRelativeHeight(724.0))
                            .padding(.leading, getRelativeWidth(25.0))
                            .padding(.trailing, getRelativeWidth(38.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .center) {
                                    Image("img_rectangle2717")
                                        .resizable()
                                        .frame(width: getRelativeWidth(387.0),
                                               height: getRelativeHeight(238.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0))
                                    Image("img_vector_black_900_40x40")
                                        .resizable()
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeWidth(40.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(119.0))
                                        .padding(.horizontal, getRelativeWidth(174.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(387.0),
                                       height: getRelativeHeight(238.0), alignment: .center)
                                Text(StringConstants.kMsgIntroductionTo)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(345.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.leading, getRelativeWidth(7.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kLblCourseBy)
                                        .font(FontScheme
                                            .kRobotoRomanMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(90.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kMsgProfTwumDerr)
                                        .font(FontScheme
                                            .kRobotoRomanMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Teal700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(173.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(13.0))
                                }
                                .frame(width: getRelativeWidth(277.0),
                                       height: getRelativeHeight(26.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Image("img_vector_amber_a400")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeWidth(18.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.bottom, getRelativeHeight(15.0))
                                    ZStack(alignment: .leading) {
                                        Image("img_clock")
                                            .resizable()
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeWidth(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(37.0))
                                            .padding(.trailing, getRelativeWidth(272.0))
                                        HStack {
                                            HStack {
                                                Text(StringConstants.kLbl45)
                                                    .font(FontScheme
                                                        .kRobotoRomanMedium(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black9007f)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(23.0),
                                                           height: getRelativeHeight(19.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLbl15h30min)
                                                    .font(FontScheme
                                                        .kRobotoRomanRegular(size: getRelativeHeight(18.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Black9007f)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(84.0),
                                                           height: getRelativeHeight(22.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(39.0))
                                            }
                                            .frame(width: getRelativeWidth(147.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .center)
                                            Button(action: {}, label: {
                                                HStack(spacing: 0) {
                                                    Text(StringConstants.kLblFree)
                                                        .font(FontScheme
                                                            .kRobotoRomanMedium(size: getRelativeHeight(20.0)))
                                                        .fontWeight(.medium)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(30.0))
                                                        .padding(.vertical, getRelativeHeight(10.0))
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.center)
                                                        .frame(width: getRelativeWidth(121.0),
                                                               height: getRelativeHeight(45.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 10.0,
                                                                                   topRight: 10.0,
                                                                                   bottomLeft: 10.0,
                                                                                   bottomRight: 10.0)
                                                                .fill(ColorConstants.Teal700))
                                                        .padding(.leading, getRelativeWidth(60.0))
                                                }
                                            })
                                            .frame(width: getRelativeWidth(121.0),
                                                   height: getRelativeHeight(45.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 10.0,
                                                                       topRight: 10.0,
                                                                       bottomLeft: 10.0,
                                                                       bottomRight: 10.0)
                                                    .fill(ColorConstants.Teal700))
                                            .padding(.leading, getRelativeWidth(60.0))
                                        }
                                        .frame(width: getRelativeWidth(329.0),
                                               height: getRelativeHeight(45.0), alignment: .leading)
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(329.0),
                                           height: getRelativeHeight(45.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(5.0))
                                }
                                .frame(width: getRelativeWidth(352.0),
                                       height: getRelativeHeight(45.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(12.0))
                                Text(StringConstants.kLblDescription)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(134.0),
                                           height: getRelativeHeight(28.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgLoremIpsumDol)
                                    .font(FontScheme
                                        .kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(359.0),
                                           height: getRelativeHeight(69.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblLessons)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(89.0),
                                           height: getRelativeHeight(27.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(7.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(515.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA700)
                            .padding(.bottom, getRelativeHeight(639.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: VIEWVIDEOView(),
                                   tag: "VIEWVIDEOView",
                                   selection: $sTARTNOWViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DEPARTMENTS1View(),
                                   tag: "DEPARTMENTS1View",
                                   selection: $sTARTNOWViewModel.nextScreen,
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

struct STARTNOWView_Previews: PreviewProvider {
    static var previews: some View {
        STARTNOWView()
    }
}
