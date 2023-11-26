import SwiftUI

struct RowrectangleCell: View {
    var body: some View {
        HStack {
            Image("img_rectangle2725")
                .resizable()
                .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0))
                .padding(.leading, getRelativeWidth(21.0))
            VStack {
                HStack {
                    Text(StringConstants.kMsgMolecularChemi)
                        .font(FontScheme.kRobotoRomanBold(size: getRelativeHeight(22.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(26.0),
                               alignment: .leading)
                    Spacer()
                    Text(StringConstants.kLbl60)
                        .font(FontScheme.kRobotoRomanMedium(size: getRelativeHeight(22.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900B2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(26.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(259.0), height: getRelativeHeight(26.0),
                       alignment: .leading)
                ZStack(alignment: .leading) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .background(RoundedCorners(topRight: 5.0, bottomRight: 5.0)
                            .fill(ColorConstants.Bluegray100))
                        .padding(.leading, getRelativeWidth(148.0))
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 5.0, bottomLeft: 5.0)
                            .fill(ColorConstants.Teal700E5))
                        .padding(.trailing, getRelativeWidth(90.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(6.0))
            }
            .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(43.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(8.0))
            .padding(.trailing, getRelativeWidth(18.0))
        }
        .frame(width: getRelativeWidth(368.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0)
                .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Black9003f, radius: 2, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct RowrectangleCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrectangleCell()
 }
 } */
