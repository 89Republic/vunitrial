import SwiftUI

struct PROFILEOneView: View {
    @StateObject var pROFILEOneViewModel = PROFILEOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(379.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray100)
                            .padding(.horizontal, getRelativeWidth(2.0))
                    }
                    .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(1.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(37.0))
                    .padding(.horizontal, getRelativeWidth(21.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_ellipse4")
                                .resizable()
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeWidth(75.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblWelcome)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(82.0),
                                           height: getRelativeHeight(26.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgKormlaFrederic)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(174.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(56.0),
                                   alignment: .top)
                            .padding(.vertical, getRelativeHeight(1.0))
                            .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(75.0),
                               alignment: .leading)
                        .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(75.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(21.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(379.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray100)
                            .padding(.horizontal, getRelativeWidth(2.0))
                    }
                    .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(1.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(21.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        Profil2Cell()
                                            .onTapGesture {
                                                pROFILEOneViewModel.nextScreen = "PROFILE1View"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(359.0), alignment: .leading)
                        .padding(.trailing)
                        HStack {
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_group40")
                                })
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeWidth(44.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 22.325, topRight: 22.325,
                                                           bottomLeft: 22.325,
                                                           bottomRight: 22.325)
                                        .fill(ColorConstants.Cyan50))
                                Text(StringConstants.kLblTheme)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(16.74312)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(60.0),
                                           height: getRelativeHeight(26.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(44.0),
                                   alignment: .center)
                            ZStack(alignment: .trailing) {
                                Toggle("", isOn: $pROFILEOneViewModel.isGroupfiftyone)
                                    .toggleStyle(SwitchToggleStyle(tint: ColorConstants.Gray800))
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                Image("img_subtract")
                                    .resizable()
                                    .frame(width: getRelativeWidth(15.0),
                                           height: getRelativeWidth(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(34.0))
                                    .padding(.trailing, getRelativeWidth(4.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(23.0),
                                   alignment: .bottom)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(185.0))
                        }
                        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(44.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_group38")
                                })
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeWidth(44.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 22.325, topRight: 22.325,
                                                           bottomLeft: 22.325,
                                                           bottomRight: 22.325)
                                        .fill(ColorConstants.Cyan50))
                                Text(StringConstants.kLblAboutUs)
                                    .font(FontScheme
                                        .kPoppinsMedium(size: getRelativeHeight(16.74312)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(26.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(15.0))
                            }
                            .onTapGesture {
                                pROFILEOneViewModel.nextScreen = "ABOUTView"
                            }
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(44.0),
                                   alignment: .center)
                            Image("img_vector_bluegray_500")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(215.0))
                        }
                        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(44.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(262.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(34.0))
                    .padding(.horizontal, getRelativeWidth(21.0))
                    VStack {
                        HStack {
                            VStack {
                                HStack {
                                    ZStack(alignment: .topLeading) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            ZStack(alignment: .center) {
                                                CircularProgress(percentage: 0.5,
                                                                 fontSize: 0.0,
                                                                 backgroundColor: Color.clear,
                                                                 fontColor: Color.clear,
                                                                 borderColor1: ColorConstants
                                                                     .WhiteA7007e,
                                                                 borderColor2: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                         .WhiteA700]),
                                                                 startPoint: .leading,
                                                                 endPoint: .trailing),
                                                                 borderWidth: 7)
                                                    .frame(width: getRelativeWidth(67.0),
                                                           height: getRelativeHeight(65.0),
                                                           alignment: .leading)
                                                    .background(ColorConstants.WhiteA7007e)
                                                Image("img_vector_white_a700")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(37.0),
                                                           height: getRelativeHeight(30.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.top, getRelativeHeight(17.7))
                                                    .padding(.bottom, getRelativeHeight(17.3))
                                                    .padding(.horizontal, getRelativeWidth(15.21))
                                            }
                                            .hideNavigationBar()
                                            .onTapGesture {
                                                pROFILEOneViewModel.nextScreen = "HELPView"
                                            }
                                            .frame(width: getRelativeWidth(67.0),
                                                   height: getRelativeHeight(65.0),
                                                   alignment: .leading)
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(3.0),
                                                       height: getRelativeWidth(3.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 1.75,
                                                                           topRight: 1.75,
                                                                           bottomLeft: 1.75,
                                                                           bottomRight: 1.75)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(67.0),
                                               height: getRelativeHeight(65.0),
                                               alignment: .trailing)
                                        .padding(.leading, getRelativeWidth(3.51))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(7.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 4.09,
                                                                       topRight: 4.09,
                                                                       bottomLeft: 4.09,
                                                                       bottomRight: 4.09)
                                                    .fill(ColorConstants.WhiteA700))
                                            .padding(.bottom, getRelativeHeight(51.22))
                                            .padding(.trailing, getRelativeWidth(63.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(65.0), alignment: .center)
                                    Spacer()
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeWidth(4.0), alignment: .top)
                                        .background(RoundedCorners(topLeft: 2.335, topRight: 2.335,
                                                                   bottomLeft: 2.335,
                                                                   bottomRight: 2.335)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.bottom, getRelativeHeight(62.0))
                                    Spacer()
                                    Text(StringConstants.kLblNeedHelp)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(19.131498)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(109.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(21.0))
                                }
                                .frame(width: getRelativeWidth(207.0),
                                       height: getRelativeHeight(66.0), alignment: .leading)
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(3.0),
                                           height: getRelativeWidth(3.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 1.75, topRight: 1.75,
                                                               bottomLeft: 1.75, bottomRight: 1.75)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.horizontal, getRelativeWidth(65.0))
                            }
                            .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(71.0),
                                   alignment: .bottom)
                            .padding(.vertical, getRelativeHeight(14.0))
                            .padding(.leading, getRelativeWidth(25.0))
                            Spacer()
                            Image("img_maskgroup")
                                .resizable()
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeHeight(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(96.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 11.25, topRight: 11.25,
                                                   bottomLeft: 11.25, bottomRight: 11.25)
                                .fill(ColorConstants.Teal700))
                        HStack {
                            Text(StringConstants.kLblPrivacyPolicy)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(13.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                            Image("img_vector_bluegray_500")
                                .resizable()
                                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(9.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(14.0))
                            Text(StringConstants.kLblTerms)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(13.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(35.0))
                            Image("img_vector_bluegray_500")
                                .resizable()
                                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(9.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(14.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(28.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogOut)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(7.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(350.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                            bottomLeft: 20.0, bottomRight: 20.0)
                                            .stroke(ColorConstants.Teal700,
                                                    lineWidth: 2))
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(81.0))
                                    .padding(.horizontal, getRelativeWidth(17.0))
                            }
                        })
                        .frame(width: getRelativeWidth(350.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                bottomRight: 20.0)
                                .stroke(ColorConstants.Teal700,
                                        lineWidth: 2))
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(81.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                    }
                    .frame(width: getRelativeWidth(382.0), height: getRelativeHeight(277.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(73.0))
                    .padding(.horizontal, getRelativeWidth(21.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HELPView(),
                                   tag: "HELPView",
                                   selection: $pROFILEOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PROFILE1View(),
                                   tag: "PROFILE1View",
                                   selection: $pROFILEOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ABOUTView(),
                                   tag: "ABOUTView",
                                   selection: $pROFILEOneViewModel.nextScreen,
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

struct PROFILEOneView_Previews: PreviewProvider {
    static var previews: some View {
        PROFILEOneView()
    }
}
