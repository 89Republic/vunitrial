import SwiftUI

struct NOTIFICATIONSView: View {
    @StateObject var nOTIFICATIONSViewModel = NOTIFICATIONSViewModel()
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
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .onTapGesture {
                                        nOTIFICATIONSViewModel.nextScreen = "HOMEPAGEView"
                                    }
                                Text(StringConstants.kLblNotifications)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(198.0),
                                           height: getRelativeHeight(43.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(43.0))
                            }
                            .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(43.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(43.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(43.0),
                           alignment: .leading)
                    VStack {
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblToday)
                                    .font(FontScheme
                                        .kRobotoRomanBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.trailing)
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Rowrectangle1Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(363.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblLast7Days)
                                    .font(FontScheme
                                        .kRobotoRomanBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(124.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                Rowrectangle2843threeCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(359.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblOlder)
                                    .font(FontScheme
                                        .kRobotoRomanBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(4.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                NOTIFICATION1Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(395.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(1.0))
                            }
                            .frame(width: getRelativeWidth(399.0), height: getRelativeHeight(851.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                        }
                        .frame(width: getRelativeWidth(399.0), height: getRelativeHeight(851.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        .padding(.leading, getRelativeWidth(17.0))
                        .padding(.trailing, getRelativeWidth(14.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(851.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(22.0))
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
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $nOTIFICATIONSViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $nOTIFICATIONSViewModel.nextScreen,
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

struct NOTIFICATIONSView_Previews: PreviewProvider {
    static var previews: some View {
        NOTIFICATIONSView()
    }
}
