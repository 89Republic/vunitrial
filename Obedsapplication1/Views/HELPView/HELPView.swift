import SwiftUI

struct HELPView: View {
    @StateObject var hELPViewModel = HELPViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        Group {
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
                                            hELPViewModel.nextScreen = "PROFILEOneView"
                                        }
                                    Spacer()
                                    Text(StringConstants.kLblHelp)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(30.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900F2)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(70.0),
                                               height: getRelativeHeight(45.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(143.0),
                                       height: getRelativeHeight(45.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(15.0))
                            Image("img_vector_teal_700_94x99")
                                .resizable()
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(94.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(48.0))
                                .padding(.horizontal, getRelativeWidth(145.0))
                            Text(StringConstants.kMsgNeedHelpLet)
                                .font(FontScheme
                                    .kPoppinsSemiBold(size: getRelativeHeight(23.098288)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(321.0),
                                       height: getRelativeHeight(69.0), alignment: .center)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                            Text(StringConstants.kMsgHereAreSomeF)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(13.474001)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(316.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(49.0))
                                .padding(.horizontal, getRelativeWidth(26.0))
                            ZStack(alignment: .leading) {
                                Image("img_arrowup")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(88.87))
                                    .padding(.leading, getRelativeWidth(333.96))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgHowDoISearch)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(13.474001)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(173.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(25.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(411.0),
                                               height: getRelativeHeight(2.0), alignment: .leading)
                                        .background(ColorConstants.Bluegray10082)
                                    Divider()
                                        .frame(width: getRelativeWidth(411.0),
                                               height: getRelativeHeight(3.0), alignment: .leading)
                                        .background(ColorConstants.Bluegray10082)
                                    Text(StringConstants.kMsgInTheHomePag)
                                        .font(FontScheme
                                            .kPoppinsLight(size: getRelativeHeight(13.474001)))
                                        .fontWeight(.light)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(340.0),
                                               height: getRelativeHeight(66.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.horizontal, getRelativeWidth(25.0))
                                }
                                .frame(width: getRelativeWidth(411.0),
                                       height: getRelativeHeight(109.0), alignment: .leading)
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(411.0), height: getRelativeHeight(109.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(23.0))
                            Divider()
                                .frame(width: getRelativeWidth(411.0),
                                       height: getRelativeHeight(3.0), alignment: .center)
                                .background(ColorConstants.Bluegray10082)
                            HStack {
                                Text(StringConstants.kMsgHowDoIDelete)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(13.474001)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(166.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Image("img_arrowup_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    .padding(.leading, getRelativeWidth(141.0))
                            }
                            .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            HStack {
                                Text(StringConstants.kMsgHowDoIUpload)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(13.474001)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(217.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Image("img_arrowup_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(91.0))
                            }
                            .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        Group {
                            HStack {
                                Text(StringConstants.kMsgCanIDownload)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(13.474001)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(223.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Image("img_arrowup_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    .padding(.leading, getRelativeWidth(84.0))
                            }
                            .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            HStack {
                                Text(StringConstants.kMsgHowDoIChange)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(13.474001)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(164.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Image("img_arrowup_black_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    .padding(.leading, getRelativeWidth(144.0))
                            }
                            .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                            Text(StringConstants.kLblOr)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.511573)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.horizontal, getRelativeWidth(183.0))
                            HStack {
                                TextField(StringConstants.kMsgTypeYourProbl,
                                          text: $hELPViewModel.languagefourText)
                                    .font(FontScheme
                                        .kPoppinsLight(size: getRelativeHeight(12.511573)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(57.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 9.62, topRight: 9.62,
                                                       bottomLeft: 9.62, bottomRight: 9.62)
                                    .fill(ColorConstants.Bluegray100))
                            .padding(.horizontal, getRelativeWidth(35.0))
                            Text(StringConstants.kMsgContactUsOnA)
                                .font(FontScheme
                                    .kPoppinsExtraLight(size: getRelativeHeight(13.523538)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(276.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(60.0))
                                .padding(.horizontal, getRelativeWidth(60.0))
                        }
                    }
                    .frame(width: getRelativeWidth(414.0), height: getRelativeHeight(794.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PROFILEOneView(),
                                   tag: "PROFILEOneView",
                                   selection: $hELPViewModel.nextScreen,
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

struct HELPView_Previews: PreviewProvider {
    static var previews: some View {
        HELPView()
    }
}
