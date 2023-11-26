import SwiftUI

struct FormfieldCell: View {
    var body: some View {
        HStack {
            Image("img_left")
                .resizable()
                .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(55.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
            VStack(alignment: .leading, spacing: 0) {
                Divider()
                    .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(2.0),
                           alignment: .leading)
                    .background(ColorConstants.Black9004c)
                Text(StringConstants.kMsgEmailOrUserna)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.leading, getRelativeWidth(5.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                Divider()
                    .frame(width: getRelativeWidth(304.0), height: getRelativeHeight(2.0),
                           alignment: .leading)
                    .background(ColorConstants.Black9004c)
                    .padding(.top, getRelativeHeight(21.0))
            }
            .frame(width: getRelativeWidth(304.0), height: getRelativeHeight(57.0),
                   alignment: .leading)
            Image("img_right")
                .resizable()
                .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(55.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
        }
        .frame(width: getRelativeWidth(338.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct FormfieldCell_Previews: PreviewProvider {

 static var previews: some View {
 			FormfieldCell()
 }
 } */
