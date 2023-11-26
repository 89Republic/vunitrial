import SwiftUI

struct DEPARTMENT2Cell: View {
    var body: some View {
        VStack {
            Text(StringConstants.kMsgFacultyOfAlli)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(25.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Teal700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(72.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(59.0))
                .padding(.horizontal, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(178.0), alignment: .leading)
        .background(ColorConstants.Bluegray10033)
        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct DEPARTMENT2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			DEPARTMENT2Cell()
 }
 } */
