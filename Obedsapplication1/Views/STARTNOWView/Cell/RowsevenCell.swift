import SwiftUI

struct RowsevenCell: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}, label: {
                    Image("img_polygon1")
                })
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.Teal700))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblLecture1)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl1Video)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900Cc)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(47.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(5.0))
            Text(StringConstants.kLbl)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(36.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Teal700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(44.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(167.0))
                .padding(.trailing, getRelativeWidth(28.0))
        }
        .frame(width: getRelativeWidth(368.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0)
                .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Black9003f, radius: 2, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct RowsevenCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowsevenCell()
 }
 } */
