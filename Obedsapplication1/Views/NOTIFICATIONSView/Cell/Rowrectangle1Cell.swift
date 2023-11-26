import SwiftUI

struct Rowrectangle1Cell: View {
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
                Image("img_rectangle2843")
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
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgDrRichardAff)
                    .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(22.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(283.0), height: getRelativeHeight(53.0),
                           alignment: .leading)
                Text(StringConstants.kLbl2hAgo)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(20.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(283.0), height: getRelativeHeight(79.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(358.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0))
        .hideNavigationBar()
    }
}

/* struct Rowrectangle1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowrectangle1Cell()
 }
 } */
