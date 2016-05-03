#include "setup.h"

int main(){
	int i=0;
	bool true1, true2;
  vector<setup> hand;
  vector<setup> cards;
  stack<setup> deck;
  vector<setup> stock;
  vector<setup> discard;
  vector<setup> com_hand;

  vect_intail(cards);
  shuffle_deck(cards, deck);
while (1){
  /*Deal(deck, com_hand);
  Com_Draw(deck, com_hand);
  Com_Sequence(stock, com_hand);
  Com_Discard(discard, com_hand);*/
  Deal(deck, hand);
	for(i; i<hand.size(); i++){
		cout << hand[i].suit << Output(hand[i].val); << endl;
	}

  Draw_Card (deck,hand, discard);
  Ask_squence(hand, stock);
  Discard(hand, discard);
	cout<<"Hand: "<<endl;
	for(i=0; i<hand.size(); i++){
		cout << hand[i].suit << Output(hand[i].val); << endl;
	}
	cout<<"Stock: "<<endl;
	for(i=0; i<stock.size(); i++){
		cout << stock[i].suit << Output(stock[i].val); << endl;
	}
	cout<<"Discard: "<<endl;
	for(i=0; i<discard.size(); i++){
		cout << discard[i].suit << Output(discard[i].val); << endl;
	}
	 true1 = Win(hand);
	  true2 = Win(com_hand);
	  if ((true1 == true)||(true2 = true))
	  	break;
	}
	if ((true1 == true)&&(true2 == false))
		cout << "Player 1 wins!" << endl;
	if (true2 == true)
		cout << "Player 2 wins!" << endl;
	
  return 0;
}
