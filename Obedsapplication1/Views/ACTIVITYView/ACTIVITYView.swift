import SwiftUI

struct ACTIVITYView: View {
    @StateObject var aCTIVITYViewModel = ACTIVITYViewModel()
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
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .onTapGesture {
                                        aCTIVITYViewModel.nextScreen = "HOMEPAGEView"
                                    }
                                Text(StringConstants.kLblActivity)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(122.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(183.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(183.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.trailing)
                        HStack {
                            Text(StringConstants.kLblTotalHours)
                                .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(152.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.0))
                            Spacer()
                            Image("img_basilnotificat")
                                .resizable()
                                .frame(width: getRelativeWidth(26.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(21.0))
                        }
                        .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                        HStack {
                            Text(StringConstants.kLbl32)
                                .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblWeek)
                                .font(FontScheme.kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900B2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .bottomTrailing) {
                                    ZStack(alignment: .bottomLeading) {
                                        Image("img_hoursbarline")
                                            .resizable()
                                            .frame(width: getRelativeWidth(316.0),
                                                   height: getRelativeHeight(154.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        HStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(57.0),
                                                       alignment: .bottom)
                                                .background(ColorConstants.Teal7007f)
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(32.0),
                                                       alignment: .bottom)
                                                .background(ColorConstants.Teal7007f)
                                                .padding(.leading, getRelativeWidth(27.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .bottom)
                                                .background(ColorConstants.Teal7007f)
                                                .padding(.leading, getRelativeWidth(31.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(57.0),
                                                       alignment: .bottom)
                                                .background(ColorConstants.Teal7007f)
                                                .padding(.leading, getRelativeWidth(31.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .bottom)
                                                .background(ColorConstants.Teal7007f)
                                                .padding(.leading, getRelativeWidth(31.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(108.0),
                                                       alignment: .center)
                                                .background(ColorConstants.Teal700)
                                                .padding(.leading, getRelativeWidth(33.0))
                                        }
                                        .frame(width: getRelativeWidth(273.0),
                                               height: getRelativeHeight(108.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(46.0))
                                        .padding(.trailing, getRelativeWidth(43.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(316.0),
                                           height: getRelativeHeight(154.0), alignment: .center)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(139.0),
                                               alignment: .bottomTrailing)
                                        .background(ColorConstants.Teal7007f)
                                        .padding(.top, getRelativeHeight(15.0))
                                        .padding(.leading, getRelativeWidth(297.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(317.0),
                                       height: getRelativeHeight(154.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblM)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblT)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblW)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(18.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblT)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        Text(StringConstants.kLblF)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(10.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblS)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblS)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                    }
                                }
                                .frame(width: getRelativeWidth(310.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.trailing, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(186.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(31.0))
                            .padding(.leading, getRelativeWidth(22.0))
                            Spacer()
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLbl10h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(27.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                Text(StringConstants.kLbl8h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                                Text(StringConstants.kLbl6h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                                Text(StringConstants.kLbl4h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                                Text(StringConstants.kLbl2h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.trailing, getRelativeWidth(8.0))
                                Text(StringConstants.kLbl0h)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(167.0),
                                   alignment: .top)
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(242.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black9003f, radius: 7, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(15.0))
                        Text(StringConstants.kLblOngoingCourses)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(246.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(8.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        RowrectangleCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(370.0), alignment: .center)
                        .padding(.leading, getRelativeWidth(5.0))
                        .padding(.trailing, getRelativeWidth(13.0))
                    }
                    .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(762.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(21.0))
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(95.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(777.54))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(14.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $aCTIVITYViewModel.nextScreen,
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

struct ACTIVITYView_Previews: PreviewProvider {
    static var previews: some View {
        ACTIVITYView()
    }
}
