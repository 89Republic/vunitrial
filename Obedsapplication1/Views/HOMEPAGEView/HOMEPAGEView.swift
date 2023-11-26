import SwiftUI

struct HOMEPAGEView: View {
    @StateObject var hOMEPAGEViewModel = HOMEPAGEViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(48.0),
                                               height: getRelativeHeight(5.0), alignment: .leading)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.trailing)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(38.0),
                                               height: getRelativeHeight(5.0), alignment: .leading)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(48.0),
                                               height: getRelativeHeight(5.0), alignment: .leading)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    ZStack(alignment: .bottomLeading) {
                                        Text(StringConstants.kLblHelloKormla)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(20.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(127.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(29.0))
                                            .padding(.trailing, getRelativeWidth(139.0))
                                        Text(StringConstants.kMsgWelcomeToKnus)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(20.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(266.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(28.99))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(266.0),
                                           height: getRelativeHeight(57.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(35.0))
                                }
                                .frame(width: getRelativeWidth(266.0),
                                       height: getRelativeHeight(126.0), alignment: .center)
                                Spacer()
                                Image("img_ellipse4")
                                    .resizable()
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeWidth(55.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.bottom, getRelativeHeight(71.0))
                                    .onTapGesture {
                                        hOMEPAGEViewModel.nextScreen = "PROFILEOneView"
                                    }
                            }
                            .frame(width: getRelativeWidth(381.0), height: getRelativeHeight(126.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(381.0), height: getRelativeHeight(126.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(126.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                VStack {
                                    HStack {
                                        Spacer()
                                        Image("img_rectangle14")
                                            .resizable()
                                            .frame(width: getRelativeWidth(392.0),
                                                   height: getRelativeHeight(226.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Image("img_rectangle15")
                                            .resizable()
                                            .frame(width: getRelativeWidth(392.0),
                                                   height: getRelativeHeight(226.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(66.0))
                                        Image("img_rectangle16")
                                            .resizable()
                                            .frame(width: getRelativeWidth(392.0),
                                                   height: getRelativeHeight(226.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(66.0))
                                        Image("img_rectangle17")
                                            .resizable()
                                            .frame(width: getRelativeWidth(392.0),
                                                   height: getRelativeHeight(226.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(66.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(226.0), alignment: .trailing)
                                    ZStack(alignment: .bottomLeading) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgCollegeOfHeal2)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(392.0),
                                                       height: getRelativeHeight(59.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                                .background(ColorConstants.YellowA200)
                                                .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                        x: 4, y: 4)
                                                .padding(.leading, getRelativeWidth(15.0))
                                            Text(StringConstants.kMsgCollegeOfScie)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .padding(.leading, getRelativeWidth(15.0))
                                                .padding(.vertical, getRelativeHeight(11.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(392.0),
                                                       height: getRelativeHeight(59.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                                .background(ColorConstants.YellowA200)
                                                .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                        x: 4, y: 4)
                                                .padding(.top, getRelativeHeight(14.0))
                                            Text(StringConstants.kMsgCollegeOfEngi)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .padding(.leading, getRelativeWidth(15.0))
                                                .padding(.vertical, getRelativeHeight(11.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(392.0),
                                                       height: getRelativeHeight(59.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                                .background(ColorConstants.YellowA200)
                                                .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                        x: 4, y: 4)
                                                .padding(.top, getRelativeHeight(14.0))
                                            Text(StringConstants.kMsgCollegeOfHuma)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .padding(.leading, getRelativeWidth(15.0))
                                                .padding(.vertical, getRelativeHeight(11.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(392.0),
                                                       height: getRelativeHeight(59.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                                .background(ColorConstants.YellowA200)
                                                .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                        x: 4, y: 4)
                                                .padding(.top, getRelativeHeight(14.0))
                                            Text(StringConstants.kMsgCollegeOfArts)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .padding(.leading, getRelativeWidth(15.0))
                                                .padding(.vertical, getRelativeHeight(11.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(392.0),
                                                       height: getRelativeHeight(59.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                                .background(ColorConstants.YellowA200)
                                                .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                        x: 4, y: 4)
                                                .padding(.top, getRelativeHeight(14.0))
                                            VStack {
                                                Text(StringConstants.kMsgCollageOfAgri)
                                                    .font(FontScheme
                                                        .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(344.0),
                                                           height: getRelativeHeight(36.0),
                                                           alignment: .topLeading)
                                                    .padding(.vertical, getRelativeHeight(11.0))
                                                    .padding(.horizontal, getRelativeWidth(15.0))
                                            }
                                            .frame(width: getRelativeWidth(392.0),
                                                   height: getRelativeHeight(59.0),
                                                   alignment: .leading)
                                            .overlay(RoundedCorners()
                                                .stroke(ColorConstants.WhiteA700, lineWidth: 1))
                                            .background(RoundedCorners()
                                                .fill(ColorConstants.YellowA200))
                                            .shadow(color: ColorConstants.Black9003f, radius: 5,
                                                    x: 4, y: 4)
                                            .padding(.top, getRelativeHeight(14.0))
                                        }
                                        .frame(width: getRelativeWidth(392.0),
                                               height: getRelativeHeight(424.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(21.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                        Text("tabbar")
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: UIScreen.main.bounds.width - 20,
                                                   height: getRelativeHeight(95.0),
                                                   alignment: .bottomLeading)
                                            .background(ColorConstants.WhiteA700)
                                            .shadow(color: ColorConstants.Black9003f, radius: 4,
                                                    x: 0, y: 4)
                                            .padding(.top, getRelativeHeight(350.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(445.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(14.0))
                                }
                                .frame(width: UIScreen.main.bounds.width)
                            }
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(685.0),
                               alignment: .leading)
                        .background(ColorConstants.Teal700)
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(95.0), alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(685.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(39.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Teal700)
                .padding(.top, getRelativeHeight(36.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PROFILEOneView(),
                                   tag: "PROFILEOneView",
                                   selection: $hOMEPAGEViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $hOMEPAGEViewModel.nextScreen,
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

struct HOMEPAGEView_Previews: PreviewProvider {
    static var previews: some View {
        HOMEPAGEView()
    }
}
