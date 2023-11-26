import SwiftUI

struct VIEWVIDEOView: View {
    @StateObject var vIEWVIDEOViewModel = VIEWVIDEOViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    VStack {
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
                                    .onTapGesture {
                                        vIEWVIDEOViewModel.nextScreen = "STARTNOWView"
                                    }
                                Text(StringConstants.kLblLecture1)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(132.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(30.0))
                            }
                            .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(21.0))
                        ZStack(alignment: .center) {
                            Image("img_rectangle2717")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(305.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_vector_black_900_40x40")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(152.0))
                                .padding(.horizontal, getRelativeWidth(195.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(305.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(157.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(507.0),
                           alignment: .topLeading)
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(95.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(778.33))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(13.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: STARTNOWView(),
                                   tag: "STARTNOWView",
                                   selection: $vIEWVIDEOViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HOMEPAGEView(),
                                   tag: "HOMEPAGEView",
                                   selection: $vIEWVIDEOViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ACTIVITYView(),
                                   tag: "ACTIVITYView",
                                   selection: $vIEWVIDEOViewModel.nextScreen,
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

struct VIEWVIDEOView_Previews: PreviewProvider {
    static var previews: some View {
        VIEWVIDEOView()
    }
}
