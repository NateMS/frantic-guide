import SwiftUI

struct CardDetailView: View {
    var card: Card

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(card.title)")
                .font(.title)
            Text("\(card.type.rawValue), \(card.set.rawValue)")
                .foregroundColor(.secondary)

            HStack(alignment: .top)  {
                Text("\(card.body)")
                    .padding(.top)
                Spacer()
                Image("black_hole")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 340)
                    .padding(0)
            }
            Spacer()
        }
        .navigationBarTitle(Text(card.title), displayMode: .inline)
        .padding()
          
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: Card(title: "All Draw One", body: "test", image: "black_hole", type: CardType.PowerCard, set: CardSet.Base))
    }
}
