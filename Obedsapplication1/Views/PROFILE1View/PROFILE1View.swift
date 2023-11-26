import SwiftUI

struct PROFILE1View: View {
    @StateObject var pROFILE1ViewModel = PROFILE1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
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
                                        pROFILE1ViewModel.nextScreen = "PROFILEOneView"
                                    }
                                Text(StringConstants.kLblProfile)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900F2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(45.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(43.0))
                            }
                            .frame(width: getRelativeWidth(171.0), height: getRelativeHeight(45.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(171.0), height: getRelativeHeight(45.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(10.0))
                        ZStack(alignment: .topTrailing) {
                            Image("img_ellipse4")
                                .resizable()
                                .frame(width: getRelativeWidth(87.0),
                                       height: getRelativeHeight(88.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .clipShape(Capsule())
                                .padding(.trailing, getRelativeWidth(12.0))
                            Button(action: {}, label: {
                                Image("img_firrcamera")
                            })
                            .frame(width: getRelativeWidth(35.0), height: getRelativeWidth(35.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 17.6, topRight: 17.6, bottomLeft: 17.6,
                                                    bottomRight: 17.6)
                                    .stroke(ColorConstants.WhiteA700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 17.6, topRight: 17.6,
                                                       bottomLeft: 17.6, bottomRight: 17.6)
                                    .fill(ColorConstants.Teal700))
                            .padding(.bottom, getRelativeHeight(46.4))
                            .padding(.leading, getRelativeWidth(64.59))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(32.0))
                        .padding(.horizontal, getRelativeWidth(122.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblName)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kMsgKormlaFrederic,
                                          text: $pROFILE1ViewModel.componentnineText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(53.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                    bottomLeft: 10.95, bottomRight: 10.95)
                                    .stroke(ColorConstants.Bluegray101,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                       bottomLeft: 10.95, bottomRight: 10.95)
                                    .fill(ColorConstants.Gray10066))
                            .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                   bottomLeft: 10.95, bottomRight: 10.95))
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblEmail)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgKorfreddieGmai,
                                              text: $pROFILE1ViewModel.emailoneText)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(15.0)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: pROFILE1ViewModel.emailoneText) { newValue in

                                    pROFILE1ViewModel.isValidEmailoneText = newValue
                                        .isValidEmail(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(53.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                        bottomLeft: 10.95, bottomRight: 10.95)
                                        .stroke(ColorConstants.Bluegray101,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                           bottomLeft: 10.95, bottomRight: 10.95)
                                        .fill(ColorConstants.Gray10066))
                                .padding(.top, getRelativeHeight(9.0))
                                if !pROFILE1ViewModel.isValidEmailoneText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(15.0)))
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(53.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                   bottomLeft: 10.95, bottomRight: 10.95))
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblDateOfBirth)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLbl11082000,
                                          text: $pROFILE1ViewModel.dateText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(53.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                    bottomLeft: 10.95, bottomRight: 10.95)
                                    .stroke(ColorConstants.Bluegray101,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                       bottomLeft: 10.95, bottomRight: 10.95)
                                    .fill(ColorConstants.Gray10066))
                            .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                   bottomLeft: 10.95, bottomRight: 10.95))
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblPhoneNumber)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(125.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLbl23326654820,
                                          text: $pROFILE1ViewModel.componentnineoneText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(53.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                    bottomLeft: 10.95, bottomRight: 10.95)
                                    .stroke(ColorConstants.Bluegray101,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                       bottomLeft: 10.95, bottomRight: 10.95)
                                    .fill(ColorConstants.Gray10066))
                            .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                   bottomLeft: 10.95, bottomRight: 10.95))
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblStudentId)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            Group {
                                HStack {
                                    TextField(StringConstants.kLbl1568918,
                                              text: $pROFILE1ViewModel.componentninetwoText)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(15.0)))
                                        .foregroundColor(ColorConstants.Bluegray500)
                                        .padding()
                                        .keyboardType(.phonePad)
                                }
                                .onChange(of: pROFILE1ViewModel.componentninetwoText) { newValue in

                                    pROFILE1ViewModel.isValidComponentninetwoText = newValue
                                        .isValidPhone(isMandatory: false)
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(53.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                        bottomLeft: 10.95, bottomRight: 10.95)
                                        .stroke(ColorConstants.Bluegray101,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                           bottomLeft: 10.95, bottomRight: 10.95)
                                        .fill(ColorConstants.Bluegray10066))
                                .padding(.top, getRelativeHeight(9.0))
                                if !pROFILE1ViewModel.isValidComponentninetwoText {
                                    Text("Please enter valid phone number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(15.0)))
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(53.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                   bottomLeft: 10.95, bottomRight: 10.95))
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblGender)
                                .font(FontScheme
                                    .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(62.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                HStack {
                                    Spacer()
                                    Image("img_line_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(8.0),
                                               height: getRelativeWidth(8.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 13.14, topRight: 13.14,
                                                                   bottomLeft: 13.14,
                                                                   bottomRight: 13.14)
                                                .fill(ColorConstants.Indigo400))
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(17.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    TextField(StringConstants.kLblMale,
                                              text: $pROFILE1ViewModel.genderoneText)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(170.0),
                                       height: getRelativeHeight(52.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                        bottomLeft: 10.95, bottomRight: 10.95)
                                        .stroke(ColorConstants.Bluegray1007e,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                           bottomLeft: 10.95, bottomRight: 10.95)
                                        .fill(ColorConstants.Gray1007e))
                                Spacer()
                                HStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(26.0),
                                               height: getRelativeWidth(26.0), alignment: .bottom)
                                        .overlay(RoundedCorners(topLeft: 13.14, topRight: 13.14,
                                                                bottomLeft: 13.14,
                                                                bottomRight: 13.14)
                                                .stroke(ColorConstants.Indigo400,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 13.14, topRight: 13.14,
                                                                   bottomLeft: 13.14,
                                                                   bottomRight: 13.14)
                                                .fill(ColorConstants.Indigo40026))
                                        .padding(.leading, getRelativeWidth(17.0))
                                    Text(StringConstants.kLblFemale)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(16.422018)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(62.0),
                                               height: getRelativeHeight(25.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(10.0))
                                        .padding(.trailing, getRelativeWidth(54.0))
                                }
                                .frame(width: getRelativeWidth(170.0),
                                       height: getRelativeHeight(52.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                        bottomLeft: 10.95, bottomRight: 10.95)
                                        .stroke(ColorConstants.Bluegray1007e,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.95, topRight: 10.95,
                                                           bottomLeft: 10.95, bottomRight: 10.95)
                                        .fill(ColorConstants.WhiteA7007e))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(52.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(812.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(31.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PROFILEOneView(),
                                   tag: "PROFILEOneView",
                                   selection: $pROFILE1ViewModel.nextScreen,
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

struct PROFILE1View_Previews: PreviewProvider {
    static var previews: some View {
        PROFILE1View()
    }
}
