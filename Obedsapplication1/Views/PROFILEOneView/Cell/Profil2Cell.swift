import SwiftUI

struct Profil2Cell: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}, label: {
                    Image("img_firruser")
                })
                .frame(width: getRelativeWidth(42.0), height: getRelativeWidth(44.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 22.325, topRight: 22.325, bottomLeft: 22.325,
                                           bottomRight: 22.325).fill(ColorConstants.Cyan50))
                Text(StringConstants.kLblProfile)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.74312)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(26.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(44.0),
                   alignment: .leading)
            Image("img_vector_bluegray_500")
                .resizable()
                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(239.0))
        }
        .frame(width: getRelativeWidth(357.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Profil2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Profil2Cell()
 }
 } */
