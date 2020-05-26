import SwiftUI



struct CardListView: View {
      var cards: [Card]

      var body: some View {
          List {
            ForEach(cards, id: \.self.title) { card in
                  NavigationLink(
                      destination: CardDetailView(card: card)
                  ) {
                    Image(card.image)
                       .resizable()
                       .scaledToFit()
                       .frame(height: 50)
                    Text(card.title)
                  }
              }
          }
      }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        let cards = [
            Card(title: "All Draw One", body: "test", image: "all_draw_one", type: CardType.PowerCard, set: CardSet.Base),
            Card(title: "Black Wish", body: "test", image: "black_wish", type: CardType.PowerCard, set: CardSet.Base),
        ]
        return CardListView(cards: cards)
    }
}
