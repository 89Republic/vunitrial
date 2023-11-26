import SwiftUI

struct NOTIFICATION1Cell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Image("img_rectangle2843")
                    .resizable()
                    .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0))
                    .padding(.bottom, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(3.0))
                Image("img_rectangle2844_3")
                    .resizable()
                    .frame(width: getRelativeWidth(63.0), height: getRelativeWidth(65.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(63.0), height: getRelativeWidth(65.0),
                   alignment: .leading)
            ZStack(alignment: .bottomLeading) {
                Text(StringConstants.kMsgDrFifiEsther)
                    .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(22.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(52.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(24.0))
                Text(StringConstants.kLbl2W)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(20.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(52.15))
                    .padding(.trailing, getRelativeWidth(221.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(76.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(329.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0))
        .hideNavigationBar()
    }
}

/* struct NOTIFICATION1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			NOTIFICATION1Cell()
 }
 } */
