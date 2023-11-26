import SwiftUI

struct ABOUTView: View {
    @StateObject var aBOUTViewModel = ABOUTViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.bottom, getRelativeHeight(9.0))
                                    .onTapGesture {
                                        aBOUTViewModel.nextScreen = "PROFILEOneView"
                                    }
                                Text(StringConstants.kLblAbout)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(43.0))
                            }
                            .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Text(StringConstants.kLblAboutUs2)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(19.131498)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(97.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(51.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgKnustELearnI)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.62997)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(366.0), height: getRelativeHeight(173.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                        Divider()
                            .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(2.0),
                                   alignment: .leading)
                            .background(ColorConstants.Black90075)
                            .padding(.top, getRelativeHeight(21.0))
                        VStack {
                            Text(StringConstants.kLblContactUs)
                                .font(FontScheme
                                    .kPoppinsSemiBold(size: getRelativeHeight(16.880735)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(26.0), alignment: .topLeading)
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Image("img__black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(29.0),
                                           height: getRelativeHeight(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgAsargroup2023G)
                                    .font(FontScheme
                                        .kPoppinsRegular(size: getRelativeHeight(14.62997)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(210.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(25.0),
                                   alignment: .trailing)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            HStack {
                                Image("img_")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsg23354382590)
                                    .font(FontScheme
                                        .kPoppinsRegular(size: getRelativeHeight(14.62997)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(127.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(127.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(129.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblUpdateVersion)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.880735)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(26.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(53.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgVersion200W)
                            .font(FontScheme.kPoppinsLight(size: getRelativeHeight(16.880735)))
                            .fontWeight(.light)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(26.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(711.0),
                           alignment: .topLeading)
                    .padding(.trailing, getRelativeWidth(41.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PROFILEOneView(),
                                   tag: "PROFILEOneView",
                                   selection: $aBOUTViewModel.nextScreen,
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

struct ABOUTView_Previews: PreviewProvider {
    static var previews: some View {
        ABOUTView()
    }
}
