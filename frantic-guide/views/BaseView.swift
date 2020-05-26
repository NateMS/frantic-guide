import SwiftUI

struct BaseView: View {

//       let cards = [
//           Card(title: "All Draw One", body: "test", image: "all_draw_one", type: CardType.PowerCard, set: CardSet.Base),
//           Card(title: "Black Wish", body: "test", image: "black_wish", type: CardType.PowerCard, set: CardSet.Base),
//       ]
    
    let cards: [Card]
    
       var body: some View {
           NavigationView {
            CardListView(cards: cards)
                   .navigationBarTitle(Text("frantic cards"))
           }.navigationViewStyle(DoubleColumnNavigationViewStyle())
       }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        let cards = [
            Card(title: "All Draw One", body: "test", image: "all_draw_one", type: CardType.PowerCard, set: CardSet.Base),
            Card(title: "Black Wish", body: "test", image: "black_wish", type: CardType.PowerCard, set: CardSet.Base),
        ]
        return BaseView(cards: cards)
    }
}
